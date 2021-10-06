/*
avr_eeprom.c

Handle stored parameters

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

2017-06-04 Created reusing code from other projects. /Henrik
*/

// http://www.nongnu.org/avr-libc/user-manual/group__avr__eeprom.html#gac5c2be42eb170be7a26fe8b7cce4bc4d
// http://www.avrfreaks.net/forum/tut-c-using-eeprom-memory-avr-gcc?page=all
// http://www.nongnu.org/avr-libc/user-manual/group__avr__eeprom.html


#include <stdint.h>

#include <avr/eeprom.h>
#include "avr_uart.h"


#include "avr_eeprom.h"

// Where in EEPROM the backup message shall be written.
#define BACKUP_EEPROM_OFFSET 512

#define DEFAULT_max_drop_mv 1000

#define DEFAULT_MIN_VOLTAGE_TO_START_MV 9000

// RefVoltage is 1.1 Volt = 1100000000 nV and 14 bits that is 16384 steps.
// So 1100000000/16384 per ADC unit before voltage divider.
// NanoVolt_PER_ADC_UNIT = RefVoltage/4096 * ((R2+R1) / R1)
// ADC0: R1 = 3.3K, R2 = 22K -> (1100000000/16384) * ((22+3.3)/3.3) -> 514729
// ADC1: R1 = 3.3K, R2 = 33K -> (1100000000/16384) * ((33+3.3)/3.3) -> 738525
// ADC2: R1 = 3.3K, R2 = 68K -> (1100000000/16384) * ((68+3.3)/3.3) -> 1450602
// ADC3: R1 = 3.3K, R2 = 68K -> (1100000000/16384) * ((68+3.3)/3.3) -> 1450602
// ADC4: R1 = 3.3K, R2 = 100K -> (1100000000/16384) * ((100+3.3)/3.3) -> 2101644
// ADC5: R1 = 3.3K, R2 = 150K -> (1100000000/16384) * ((150+3.3)/3.3) -> 3118896
// ADC6: R1 = 3.3K, R2 = 220K -> (1100000000/16384) * ((220+3.3)/3.3) -> 4543050
// ADC7: R1 = 3.3K, R2 = 150K -> (1100000000/16384) * ((150+3.3)/3.3) -> 3118896

#define DEFAULT_NanoVolt_PER_ADC_UNIT_0 514729L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_1 738525L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_2 1450602L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_3 1450602L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_4 2101643L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_5 3118896L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_6 4543050L
#define DEFAULT_NanoVolt_PER_ADC_UNIT_7 3118896L


#define DEFAULT_MIN_OFF_TIME_S 6

// The super caps we use can be charged to 3.8 Volts
// Remember most super caps shall have only 2.7 Volts.
#define DEFAULT_CHARGE_PER_CELL_MV 3420

#define DEFAULT_STOP_MV 7000
#define DEFAULT_WARNING_MV 8000

// See DEFAULT_NanoVolt_PER_ADC_UNIT_6 for the resolution of measurements.
// Some margins need to be larger than that.
#define DEFAULT_restart_time_s 60
#define DEFAULT_margin_charge_mV 10
#define DEFAULT_margin_over_mV 10
#define DEFAULT_margin_more_mV 50
#define DEFAULT_max_shunting_mV 4000
#define DEFAULT_margin_under_mV 10
#define DEFAULT_fault_threshold_mV 5000
#define DEFAULT_low_fault_threshold_mV 500
#define DEFAULT_ignore_lower_mV 1000

EeDataStruct ee={
	EEDATA_MAGIC_NR, // magicNumber
	DEFAULT_max_drop_mv,
	DEFAULT_MIN_VOLTAGE_TO_START_MV,
	DEFAULT_MIN_OFF_TIME_S,
	DEFAULT_STOP_MV,
	DEFAULT_WARNING_MV,
	DEFAULT_CHARGE_PER_CELL_MV,
	DEFAULT_restart_time_s,
    DEFAULT_NanoVolt_PER_ADC_UNIT_0,
    DEFAULT_NanoVolt_PER_ADC_UNIT_1,
    DEFAULT_NanoVolt_PER_ADC_UNIT_2,
    DEFAULT_NanoVolt_PER_ADC_UNIT_3,
    DEFAULT_NanoVolt_PER_ADC_UNIT_4,
    DEFAULT_NanoVolt_PER_ADC_UNIT_5,
    DEFAULT_NanoVolt_PER_ADC_UNIT_6,
    DEFAULT_NanoVolt_PER_ADC_UNIT_7,
	DEFAULT_margin_charge_mV,
	DEFAULT_margin_over_mV,
	DEFAULT_margin_more_mV,
	DEFAULT_max_shunting_mV,
	DEFAULT_margin_under_mV,
	DEFAULT_fault_threshold_mV,
	DEFAULT_low_fault_threshold_mV,
	DEFAULT_ignore_lower_mV,
    0,
    0,
    0,
	0,
    0,
    0,
    0,
	0
};



// Very simple checksum/hash
static uint32_t calcCSum(const uint8_t *ptr, uint16_t size)
{
	uint32_t s=0;
	uint8_t i;
	for (i=0; i<size; ++i)
	{
		s = s*31 + *ptr;
        ptr++;
	}
	return s;
}



static int8_t saveBytePacker(EeDataStruct* eedataStruct, uint16_t offset)
{
	eeprom_write_block(eedataStruct, (void*)offset, sizeof(EeDataStruct));
	return  0;
}

static int8_t loadBytePacker(EeDataStruct* eedataStruct, uint16_t offset)
{
	eeprom_read_block((void *)eedataStruct, (const void *)offset, sizeof(EeDataStruct));
	return 0;
}



void eepromSave()
{
	// Set checksum to zero while calculating it.
	ee.checkSum = 0;
    const uint32_t calculatedCSum = calcCSum((const uint8_t*)&ee, sizeof(EeDataStruct));
	ee.checkSum = calculatedCSum;

	saveBytePacker(&ee, 0);
	saveBytePacker(&ee, BACKUP_EEPROM_OFFSET);

	UART_PRINT_P("eeprom save\r\n");
}

#ifdef EEDATA_LEGACY_MAGIC_NR
static void eepromDataUpgrade(EeDataStruct* e)
{
	if (e->magicNumber == EEDATA_LEGACY_MAGIC_NR)
	{
		EeDataLegacyStruct* l = (EeDataLegacyStruct*)e;

		// save checksum
		const uint32_t csumLoaded = l->checkSum;

		// Set checksum to zero while calculating it. Since that is what we did when saving
		l->checkSum = 0;

		// Check CRC with old size of data. NOTE new size must not be less than old!
		const uint32_t csumCalculated = calcCSum((const unsigned char *)l, sizeof(EeDataLegacyStruct));

		if (csumCalculated == csumLoaded)
		{
		    // Apply any translation needed here. For example if another
		    // field was added set it to its default value.
			e->magicNumber = EEDATA_MAGIC_NR;
			e->stop_charging_battery_at_mv = DEFAULT_CHARGE_PER_CELL_MV;

			// Checksum was OK so update it also to new format.
			e->checkSum = 0;
			const uint32_t newCsum = calcCSum((const unsigned char *)e, sizeof(EeDataStruct));
			e->checkSum = newCsum;

			UART_PRINT_P("upgraded eeprom");
		}

	}
}
#endif


// Returns 0 if OK
static int8_t eepromTryLoad(uint16_t offset)
{
	EeDataStruct tmp;


	const int8_t r = loadBytePacker(&tmp, offset);

	#ifdef EEDATA_LEGACY_MAGIC_NR
	eepromDataUpgrade(&tmp);
	#endif

	// save checksum
	const uint32_t csumLoaded = tmp.checkSum;

	// Set checksum to zero while calculating it. Since that is what we did when saving
	tmp.checkSum = 0;
    const uint32_t csumCalculated = calcCSum((const unsigned char *)&tmp, sizeof(EeDataStruct));

	if(tmp.magicNumber != ee.magicNumber)
	{
		UART_PRINT_P("eeprom wrong magic\r\n");
    	return -1;
	}

	if(csumCalculated != csumLoaded)
	{
		UART_PRINT_P("eeprom wrong checksum\r\n");
    	return -1;
	}

	ee = tmp;

	return r;
}


// If EEProm is available we want to set wantedCurrent and/or wantedVoltage
// We do that by reading EEPROM as if those where commands an pass these commands to
void eepromLoad(void)
{
	int8_t r = eepromTryLoad(0);

	if (r == 0)
	{
		UART_PRINT_P("eeprom loaded OK\r\n");
	}
	else
	{
		r = eepromTryLoad(BACKUP_EEPROM_OFFSET);
		if (r==0)
		{
			UART_PRINT_P("eeprom backup OK\r\n");
		}
		else
		{
			UART_PRINT_P("eeprom defaulted\r\n");
		}
	}
}




