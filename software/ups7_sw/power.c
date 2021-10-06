/*
power.c

Provide functions to supervise the battery.

Copyright (C) 2021 Henrik Bjorkman www.eit.se/hb.

This file is free software; you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License version 2.1.

Removing this comment or the history section is not allowed. Even if only
a few lines from this file is actually used. If you modify this code make
a note about it in the history section below. That is required!

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

History

2021-04-20 Created. /Henrik
 */

/*
TODO Use Atmega internal temp sensor so we can avoid charging at cold temp.



How to calibrate voltage measuring

Issue command "g v" to get voltage_reading.
Issue command "g m" to get old_nanoVoltsPerUnit.
Measure also battery voltage with a good voltage meter to get measured_voltage.
new_nanoVoltsPerUnit = measured_voltage*old_nanoVoltsPerUnit/voltage_reading
issue command "s m <new_nanoVoltsPerUnit>"
issue command "e" to save.
reboot for setting to take effect, command "r".
Example:
4100*5825/3970 -> 6016



References:
[1] https://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061B.pdf
[2] https://batteryuniversity.com/learn/article/charging_lithium_ion_batteries
[3] https://batteryuniversity.com/learn/article/confusion_with_voltages
 */

#include <avr/pgmspace.h>
#include <stdint.h>
#include "avr_cfg.h"
#include "avr_sys.h"
#include "avr_uart.h"
#include "avr_adc.h"
#include "avr_ports.h"
#include "avr_tmr0.h"
#include "avr_tmr1.h"
#include "avr_eeprom.h"
#include "utility.h"
#include "power.h"




#define BATTERY_TIMEOUT 0xFFFF
#define NOF_CAPS 7


enum {
	POWER_S_INITIAL_STATE,
	POWER_S_MEASURING_STARTUP_STATE,
	POWER_S_MEASURING_CHARGING,
	POWER_S_MEASURING_FAIL_STATE,
};

enum {
	POWER_FAST_INITIAL,
	POWER_FAST_WAIT,
	POWER_FAST_SUPERVICE_SHUNTS,
	POWER_FAST_SUPERVICE_CHARGING,
	POWER_FAST_SUPERVICE_CAPS,
	POWER_FAST_LOG,
};

enum {
	SUPER_STATE_LOWER_THAN_WANTED,
	SUPER_STATE_SUSPECT_SHORTED,
	SUPER_STATE_FAULTY_SHORT,
	SUPER_STATE_ABOVE_WANTED,
	SUPER_STATE_HIGER_THAN_LOWEST,
	SUPER_STATE_SUSPECT_OPEN,
	SUPER_STATE_FAULTY_OPEN,
};




static int8_t power_s_state = POWER_S_INITIAL_STATE;
static int8_t power_counter = 0;
static uint16_t log_adc[8] = {0};
static int32_t voltage_mV[8] = {0};
static int8_t log_state = 0;
static int16_t power_timer_ms = 0;
static int8_t super_cap_state[NOF_CAPS] = {SUPER_STATE_LOWER_THAN_WANTED};
static int32_t super_cap_mv[NOF_CAPS] = {0};
static int8_t charging_relay = 0;
static uint8_t cooldown_counter = 0;
static int8_t power_fast_state = POWER_FAST_INITIAL;
static int8_t supervice_request = 0;
static int8_t log_request = 0;

// Find median value of the latest 3 values.
static uint16_t median_of_3(uint16_t v0, uint16_t v1, uint16_t v2)
{
	uint16_t vm = 0xFFFF;
	if ((v0 >= v1) && (v0 <= v2))
	{
		vm = v0;
	}
	else if ((v0 <= v1) && (v0 >= v2))
	{
		vm = v0;
	}
	else if ((v1 >= v2) && (v1 <= v0))
	{
		vm = v1;
	}
	else if ((v1 <= v2) && (v1 >= v0))
	{
		vm = v1;
	}
	else if ((v2 >= v1) && (v2 <= v0))
	{
		vm = v2;
	}
	else if ((v2 <= v1) && (v2 >= v0))
	{
		vm = v2;
	}
	else
	{
		// This should not happen
		AVR_ERROR_HANDLER_P("median", __LINE__);
	}
	return vm;
}

void power_init(void)
{
	AVR_ADC_init();

	// Relays are initialized in avr_init.
	// So not here.
	//RELAY_ENABLE();
	//RELAY_ON();

	power_timer_ms = avr_systime_ms_16() + 1000;

}

// Time factor determines over how many samples we make the gliding mean value.
// A higher value for filter time gives a better but slower value so its a compromise.
// The scale factor is more about number of bits in calculation.
#define MEASURING_FILTER_TIME_FACTOR 1

#if MEASURING_FILTER_TIME_FACTOR != 1
#define MEASURING_FILTER_SCALE_FACTOR 256LL

static uint64_t filtered_voltage_scaled[8] = {0};
static uint8_t filtered_values_available[8] = {0};

static uint64_t calcGlidingMeanValue(uint8_t chan, uint64_t latestValue)
{
	// Calculate a gliding mean value or exponential moving average (EMA)
	if (filtered_values_available[chan] < MEASURING_FILTER_TIME_FACTOR)
	{
		filtered_values_available[chan]++;
		const uint64_t latestValueScaled = (uint64_t)latestValue*MEASURING_FILTER_SCALE_FACTOR;
		const uint64_t filteredChangeScaledXTime = (filtered_voltage_scaled[chan] * (filtered_values_available[chan]-1)) + latestValueScaled;
		filtered_voltage_scaled[chan] = filteredChangeScaledXTime / filtered_values_available[chan];
	}
	else
	{
		const uint64_t latestValueScaled = (uint64_t)latestValue*MEASURING_FILTER_SCALE_FACTOR;
		const uint64_t filteredChangeScaledXTime = (filtered_voltage_scaled[chan] * (MEASURING_FILTER_TIME_FACTOR-1)) + latestValueScaled;
		filtered_voltage_scaled[chan] = filteredChangeScaledXTime / MEASURING_FILTER_TIME_FACTOR;
	}
	return filtered_voltage_scaled[chan] / MEASURING_FILTER_SCALE_FACTOR;
}
#else

static uint64_t calcGlidingMeanValue(uint8_t chan, uint64_t latestValue)
{
	return latestValue;
}
#endif

static uint32_t getNanoVoltsPerUnit(uint8_t channel)
{
	ASSERT(channel <= 8);
	uint32_t *nanoVoltsPerUnit = &ee.nanoVoltsPerUnit0;
	return nanoVoltsPerUnit[channel];
}

#if NOF_SAMPLES_PER_CHANNEL != 3
#error
#endif

static void read_adc_channel(uint8_t channel)
{
	// Expected sampling_sequence : 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7
	const uint16_t pv0=AVR_ADC_getSample(0 + channel);
	const uint16_t pv1=AVR_ADC_getSample(8 + channel);
	const uint16_t pv2=AVR_ADC_getSample(16 + channel);
	const uint16_t pv = median_of_3(pv0, pv1, pv2);

	log_adc[channel] = pv;

	const uint64_t nanoVoltsPerUnit = getNanoVoltsPerUnit(channel);

	const uint64_t latest_uV = (((uint64_t)pv * nanoVoltsPerUnit) + 500) / 1000;

	const uint64_t filtered_uV = calcGlidingMeanValue(channel, latest_uV);

	voltage_mV[channel] = filtered_uV / 1000LL;
}

static void read_all_channels(void)
{
	if (!AVR_ADC_isready())
	{
		AVR_ERROR_HANDLER_P("ADC not ready", __LINE__);
		return;
	}

	// Read all channels
	for(uint8_t i=0; i<NOF_ADC_CHANNELS; i++)
	{
		read_adc_channel(i);
	}


	// Calculate voltage over each capacitor

	super_cap_mv[0]=voltage_mV[0];

	for(uint8_t i=1; i<NOF_CAPS; i++)
	{
		super_cap_mv[i]=voltage_mV[i]-voltage_mV[i-1];
	}
}

static void shunt_on(uint8_t n)
{
	switch(n)
	{
	case 0: RELAY_SHUNT0_ON(); break;
	case 1: RELAY_SHUNT1_ON(); break;
	case 2: RELAY_SHUNT2_ON(); break;
	case 3: RELAY_SHUNT3_ON(); break;
	case 4: RELAY_SHUNT4_ON(); break;
	case 5: RELAY_SHUNT5_ON(); break;
	case 6: RELAY_SHUNT6_ON(); break;
	default: avr_error_handler_P(PSTR("shunt_on"), n); break;
	}
}

static void shunt_off(uint8_t n)
{
	switch(n)
	{
	case 0: RELAY_SHUNT0_OFF(); break;
	case 1: RELAY_SHUNT1_OFF(); break;
	case 2: RELAY_SHUNT2_OFF(); break;
	case 3: RELAY_SHUNT3_OFF(); break;
	case 4: RELAY_SHUNT4_OFF(); break;
	case 5: RELAY_SHUNT5_OFF(); break;
	case 6: RELAY_SHUNT6_OFF(); break;
	default: avr_error_handler_P(PSTR("shunt_off"), n); break;
	}
}

// Ignoring capacitors in faulty state.
static int32_t find_lowest_mV(void)
{
	int32_t lowest_mV = 0x7FFFFFFF;
	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		if (super_cap_state[i] != SUPER_STATE_FAULTY_SHORT)
		{
			if (super_cap_mv[i] < lowest_mV)
			{
				lowest_mV = super_cap_mv[i];
			}
		}
	}

	return lowest_mV;
}

// Ignoring capacitors in faulty state.
static int32_t find_highest_mV(void)
{
	int32_t highest_mV = 0;
	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		if (super_cap_state[i] != SUPER_STATE_FAULTY_OPEN)
		{
			if (super_cap_mv[i] > highest_mV)
			{
				highest_mV = super_cap_mv[i];
			}
		}
	}
	return highest_mV;
}

// Ignoring capacitors in faulty state.
static int32_t find_second_lowest_mV(int32_t lowest_mV)
{
	int32_t second_lowest_mV = 0x7FFFFFFF;
	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		if (super_cap_state[i] != SUPER_STATE_FAULTY_SHORT)
		{
			if ((super_cap_mv[i] > lowest_mV) && (super_cap_mv[i] < second_lowest_mV))
			{
				second_lowest_mV = super_cap_mv[i];
			}
		}
	}

	return second_lowest_mV;
}

static void supervice_super_caps(void)
{
	const int32_t lowest_mV = find_lowest_mV();

	// Ignore lowest if it is less than ignore_lower_mV
	const int32_t lowest_filtered_mV = (lowest_mV < ee.ignore_lower_mV) ? ee.ignore_lower_mV : lowest_mV;

	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		switch(super_cap_state[i])
		{
			case SUPER_STATE_LOWER_THAN_WANTED:
			{
				const int32_t second_lowest_mv = find_second_lowest_mV(lowest_mV);
				if ((super_cap_mv[i] + ee.low_fault_margin_mV) < second_lowest_mv)
				{
					//shunt_off(i);
					super_cap_state[i] = SUPER_STATE_SUSPECT_SHORTED;
				}
				else if ((super_cap_mv[i]) > (ee.charge_per_cell_mv + ee.margin_over_mV))
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_ABOVE_WANTED;
				}
				else if (((super_cap_mv[i])) > (lowest_filtered_mV + ee.margin_more_mV))
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_HIGER_THAN_LOWEST;
				}
				else
				{
					//shunt_off(i);
				}
				break;
			}
			case SUPER_STATE_ABOVE_WANTED:
			{
				if ((super_cap_mv[i]) > ee.high_fault_threshold_mV)
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_SUSPECT_OPEN;
				}
				else if (((super_cap_mv[i])) > (lowest_filtered_mV + ee.margin_more_mV))
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_HIGER_THAN_LOWEST;
				}
				else if ((super_cap_mv[i]) + ee.margin_under_mV < (ee.charge_per_cell_mv))
				{
					//shunt_off(i);
					super_cap_state[i] = SUPER_STATE_LOWER_THAN_WANTED;
				}
				else
				{
					//shunt_on(i);
				}
				break;
			}
			case SUPER_STATE_HIGER_THAN_LOWEST:
			{
				if ((super_cap_mv[i]) > (ee.charge_per_cell_mv + ee.margin_over_mV))
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_ABOVE_WANTED;
				}
				else if (((super_cap_mv[i])) > (lowest_filtered_mV + ee.margin_over_mV))
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_HIGER_THAN_LOWEST;
				}
				else if ((super_cap_mv[i]) + ee.margin_under_mV < (ee.charge_per_cell_mv))
				{
					//shunt_off(i);
					super_cap_state[i] = SUPER_STATE_LOWER_THAN_WANTED;
				}
				else
				{
					//shunt_on(i);
				}
				break;
			}
			case SUPER_STATE_SUSPECT_OPEN:
			case SUPER_STATE_FAULTY_OPEN:
				if ((super_cap_mv[i]) > ee.high_fault_threshold_mV)
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_FAULTY_OPEN;
				}
				else
				{
					//shunt_on(i);
					super_cap_state[i] = SUPER_STATE_ABOVE_WANTED;
				}
				break;
			case SUPER_STATE_SUSPECT_SHORTED:
			case SUPER_STATE_FAULTY_SHORT:
			{
				const int32_t second_lowest_mv = find_second_lowest_mV(lowest_mV);
				if ((super_cap_mv[i] + ee.low_fault_margin_mV) < second_lowest_mv)
				{
					//shunt_off(i);
					super_cap_state[i] = SUPER_STATE_FAULTY_SHORT;
				}
				else
				{
					//shunt_off(i);
					super_cap_state[i] = SUPER_STATE_LOWER_THAN_WANTED;
				}
				break;
			}
				// Once faulty -> always faulty
				//shunt_on(i);
				break;
				// Once faulty -> always faulty
				//shunt_on(i);
				break;
		}

		switch(super_cap_state[i])
		{
			case SUPER_STATE_LOWER_THAN_WANTED:
			case SUPER_STATE_SUSPECT_SHORTED:
			case SUPER_STATE_FAULTY_SHORT:
			{
				shunt_off(i);
				break;
			}
			default:
			{
				shunt_on(i);
				break;
			}
		}
	}
}

// Check if shunting resistors are at risk of over heating.
// Currently used shunting resistors (R30 to R36) are not designed to shunt more than 5 Volt.
// 0.25 W, 100 Ohm, 1206 Chip Resistor
// If voltage is more then that, then something is wrong (faulty capacitor probably).
static void supervice_shunting_resistors(void)
{
	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		if (super_cap_mv[i] > ee.max_shunting_mV)
		{
			// Charging must be paused or else this resistor will over heat.
			// It may be to late but we can try. So how long?
			const int16_t factor = DIV_ROUNDED(super_cap_mv[i], ee.max_shunting_mV);
			if (factor>=16)
			{
				cooldown_counter = 255;
			}
			const int16_t factor_sqr = (1+factor)*factor;
			if (factor_sqr > cooldown_counter)
			{
				cooldown_counter = factor_sqr;
			}
		}
	}
}

void power_log(void)
{
	UART_PRINT_P("p ");

	for(uint8_t i=0; i<NOF_ADC_CHANNELS; i++)
	{
		uart_print_hex16(log_adc[i]);
		uart_putchar(' ');
	}
	uart_putchar(' ');

	#if 0
	for(uint8_t i=0; i<NOF_ADC_CHANNELS; i++)
	{
		char tmp[32];
		utility_lltoa(voltage_mV[i], tmp, 10);
		uart_print(tmp);
		uart_putchar(' ');
	}
	uart_putchar(' ');
	#endif

	int32_t sum = 0;
	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		const int32_t v = super_cap_mv[i];
		char tmp[32];
		utility_lltoa(v, tmp, 10);
		uart_print(tmp);
		uart_putchar(' ');
		sum+=v;
	}

	{
		uart_putchar(' ');
		char tmp[32];
		utility_lltoa(sum, tmp, 10);
		uart_print(tmp);
	}


	{
		uart_putchar(' ');
		char tmp[32];
		utility_lltoa(voltage_mV[7], tmp, 10);
		uart_print(tmp);
		uart_putchar(' ');
	}

	uart_putchar(' ');
	for(uint8_t i=0; i<NOF_CAPS; i++)
	{
		uart_print_hex4(super_cap_state[i]);
	}
	uart_putchar(' ');
	uart_print_hex4(charging_relay);

	UART_PRINT_P("\r\n");
}

static void relay_charge_off(void)
{
	RELAY_CHARGE_OFF();
	charging_relay = 0;
}

static void relay_charge_on(void)
{
	RELAY_CHARGE_ON();
	charging_relay = 1;
}

void power_tick_fast(void)
{
	switch(power_fast_state)
	{
		case POWER_FAST_WAIT:
		{
			if (AVR_ADC_isready())
			{
				if (supervice_request)
				{
					read_all_channels();
					power_fast_state = POWER_FAST_SUPERVICE_SHUNTS;
				}
				else if (log_request)
				{
					read_all_channels();
					power_fast_state = POWER_FAST_LOG;
				}
			}
			break;
		}
		case POWER_FAST_SUPERVICE_SHUNTS:
		{
			supervice_shunting_resistors();
			power_fast_state = POWER_FAST_SUPERVICE_CHARGING;
			break;
		}
		case POWER_FAST_SUPERVICE_CHARGING:
		{
			const int32_t highest_mV = find_highest_mV();

			if (cooldown_counter != 0)
			{
				cooldown_counter--;
				relay_charge_off();
			}
			else if (highest_mV > ee.charge_per_cell_mv)
			{
				relay_charge_off();
			}
			else
			{
				relay_charge_on();
			}
			power_fast_state = POWER_FAST_SUPERVICE_CAPS;
			break;
		}
		case POWER_FAST_SUPERVICE_CAPS:
		{
			supervice_super_caps();
			supervice_request = 0;
			power_fast_state = POWER_FAST_LOG;
			break;
		}
		case POWER_FAST_LOG:
		{
			power_log();
			log_request = 0;
			power_fast_state = POWER_FAST_WAIT;
			break;
		}
		case POWER_FAST_INITIAL:
		default:
			power_fast_state = POWER_FAST_WAIT;
			break;
	}
}

void power_tick_s(void)
{
	switch (power_s_state)
	{
		default:
		case POWER_S_INITIAL_STATE:
		{
			// Initial state
			UART_PRINT_P("power startup\r\n");
			relay_charge_off();
			power_counter = 0;
			power_s_state = POWER_S_MEASURING_STARTUP_STATE;
			break;
		}
		case POWER_S_MEASURING_STARTUP_STATE:
		{
			// Wait in this state for a while so that things are stable.

			if ((log_request != 0) || (supervice_request != 0))
			{
				UART_PRINT_P("power fail\r\n");
				power_counter = 0;
				power_s_state=POWER_S_MEASURING_FAIL_STATE;
			}
			else
			{
				// Let ADC start next round of sampling.
				AVR_ADC_startSampling();
				log_request = 1;

				if (power_counter<4)
				{
					++power_counter;
				}
				else
				{
					power_counter = 0;
					supervice_request = 1;
					power_s_state=POWER_S_MEASURING_CHARGING;
				}
			}
			break;
		}
		case POWER_S_MEASURING_CHARGING:
		{
			if ((log_request != 0) || (supervice_request != 0))
			{
				UART_PRINT_P("power fail\r\n");
				power_counter = 0;
				power_s_state=POWER_S_MEASURING_FAIL_STATE;
			}
			else
			{
				// Let ADC start next round of sampling.
				AVR_ADC_startSampling();
				supervice_request = 1;
			}
			break;
		}
		case POWER_S_MEASURING_FAIL_STATE:
		{
			relay_charge_off();

			if (power_counter<10)
			{
				++power_counter;
			}
			else
			{
				//LOG_VOLTAGE_MV_P("restart");
				AVR_ADC_init();
				power_s_state=POWER_S_INITIAL_STATE;
			}
			break;
		}
	}

	if (power_s_state != log_state)
	{
		UART_PRINT_P("ps ");
		uart_print_hex4(power_s_state);
		uart_print_crlf();
		log_state = power_s_state;
	}


	avr_wtd_reset_from_power();
}

int32_t power_get_voltage_mV(uint8_t channel)
{
	ASSERT(channel<8);
	return voltage_mV[channel];
}

int8_t power_get_state(void)
{
	return power_s_state;
}
