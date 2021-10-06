/*
cmd.h

Provide command line functions.

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

2021-05-01 Created. /Henrik
*/

#include <stdint.h>
#include "avr_cfg.h"
#include "avr_sys.h"
#include "avr_uart.h"
#include "avr_eeprom.h"
#include "version.h"
#include "utility.h"
#include "power.h"
#include "game.h"
#include "cmd.h"

#define LOG_INT16_P(str, i) {log_int16_p(PSTR(str), i);}

enum
{
	par_unknown = 0,

	par_version_major,
	par_version_minor,
	par_version_debug,
	par_game_state,
	par_power_get_state,
	par_power_get_voltage_0_mV,
	par_power_get_voltage_1_mV,
	par_power_get_voltage_2_mV,
	par_power_get_voltage_3_mV,
	par_power_get_voltage_4_mV,
	par_power_get_voltage_5_mV,
	par_power_get_voltage_6_mV,
	par_power_get_voltage_7_mV,

	par_magicNumber,
	par_max_drop_mv,
	par_min_voltage_to_start_mv,
	par_min_off_time_s,
	par_shutdown_at_mv,
	par_warning_at_mv,
	par_charge_per_cell_mv,
	par_restart_time_s,
	par_nanoVoltsPerUnit0,
	par_nanoVoltsPerUnit1,
	par_nanoVoltsPerUnit2,
	par_nanoVoltsPerUnit3,
	par_nanoVoltsPerUnit4,
	par_nanoVoltsPerUnit5,
	par_nanoVoltsPerUnit6,
	par_nanoVoltsPerUnit7,
	par_margin_charge_mV,
	par_margin_over_mV,
	par_margin_more_mV,


	par_max_number // This must be last (its not a parameter).
};


char command_buffer[32+1];
uint8_t command_length = 0;

static int64_t get_par_value(int par)
{
	switch(par)
	{
		case par_version_major: return VERSION_MAJOR;
		case par_version_minor: return VERSION_MINOR;
		case par_version_debug: return VERSION_DEBUG;
		case par_game_state: return game_get_state();
		case par_power_get_state: return power_get_state();
		case par_power_get_voltage_0_mV: return power_get_voltage_mV(0);
		case par_power_get_voltage_1_mV: return power_get_voltage_mV(1);
		case par_power_get_voltage_2_mV: return power_get_voltage_mV(2);
		case par_power_get_voltage_3_mV: return power_get_voltage_mV(3);
		case par_power_get_voltage_4_mV: return power_get_voltage_mV(4);
		case par_power_get_voltage_5_mV: return power_get_voltage_mV(5);
		case par_power_get_voltage_6_mV: return power_get_voltage_mV(6);
		case par_power_get_voltage_7_mV: return power_get_voltage_mV(7);

		case par_magicNumber: return ee.magicNumber;
		case par_max_drop_mv: return ee.max_drop_mv;
		case par_min_voltage_to_start_mv: return ee.min_voltage_to_start_mv;
		case par_min_off_time_s: return ee.min_off_time_s;
		case par_shutdown_at_mv: return ee.shutdown_at_mv;
		case par_warning_at_mv: return ee.warning_at_mv;
		case par_charge_per_cell_mv: return ee.charge_per_cell_mv;
		case par_restart_time_s: return ee.restart_time_s;
		case par_nanoVoltsPerUnit0: return ee.nanoVoltsPerUnit0;
		case par_nanoVoltsPerUnit1: return ee.nanoVoltsPerUnit1;
		case par_nanoVoltsPerUnit2: return ee.nanoVoltsPerUnit2;
		case par_nanoVoltsPerUnit3: return ee.nanoVoltsPerUnit3;
		case par_nanoVoltsPerUnit4: return ee.nanoVoltsPerUnit4;
		case par_nanoVoltsPerUnit5: return ee.nanoVoltsPerUnit5;
		case par_nanoVoltsPerUnit6: return ee.nanoVoltsPerUnit6;
		case par_nanoVoltsPerUnit7: return ee.nanoVoltsPerUnit7;
		case par_margin_charge_mV: return ee.margin_charge_mV;
		case par_margin_over_mV: return ee.margin_over_mV;
		case par_margin_more_mV: return ee.margin_more_mV;

		default: return 0;
	}
}

static void set_par_value(int par, int64_t v)
{
	switch(par)
	{
		case par_magicNumber: ee.magicNumber = v; return;
		case par_max_drop_mv: ee.max_drop_mv = v; return;
		case par_min_voltage_to_start_mv: ee.min_voltage_to_start_mv = v; return;
		case par_min_off_time_s: ee.min_off_time_s = v; return;
		case par_shutdown_at_mv: ee.shutdown_at_mv = v; return;
		case par_warning_at_mv: ee.warning_at_mv = v; return;
		case par_charge_per_cell_mv: ee.charge_per_cell_mv = v; return;
		case par_restart_time_s: ee.restart_time_s = v; return;
		case par_nanoVoltsPerUnit0: ee.nanoVoltsPerUnit0 = v; return;
		case par_nanoVoltsPerUnit1: ee.nanoVoltsPerUnit1 = v; return;
		case par_nanoVoltsPerUnit2: ee.nanoVoltsPerUnit2 = v; return;
		case par_nanoVoltsPerUnit3: ee.nanoVoltsPerUnit3 = v; return;
		case par_nanoVoltsPerUnit4: ee.nanoVoltsPerUnit4 = v; return;
		case par_nanoVoltsPerUnit5: ee.nanoVoltsPerUnit5 = v; return;
		case par_nanoVoltsPerUnit6: ee.nanoVoltsPerUnit6 = v; return;
		case par_nanoVoltsPerUnit7: ee.nanoVoltsPerUnit7 = v; return;
		case par_margin_charge_mV: ee.margin_charge_mV = v; return;
		case par_margin_over_mV: ee.margin_over_mV = v; return;
		case par_margin_more_mV: ee.margin_more_mV = v; return;
		default: break;
	}
}

static int get_par_id(char *ptr)
{
	switch(*ptr)
	{
		case 'g': return par_game_state;
		case 'm': return par_nanoVoltsPerUnit7;
		case 's': return par_charge_per_cell_mv;
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
		{
			const int64_t i = utility_atoll(ptr);
			if ((i>=0) && (i<par_max_number))
			{
				return i;
			}
			break;
		}
		case 'v': return par_power_get_voltage_7_mV;
		case 'p': return par_power_get_state;
		default:

			UART_PRINT_P("?\r\n");
			break;
	}
	return par_unknown;
}



static void print_uint64(uint64_t i)
{
	char tmp[32];
	utility_lltoa(i, tmp, 10);
	uart_print(tmp);
}

static void interpret_get(char *ptr)
{
	while(*ptr==' ')
	{
		ptr++;
	}
	int par = get_par_id(ptr);

	const int64_t v = get_par_value(par);

	uart_print_P(PSTR("get "));
	print_uint64(v);
	uart_print_P(PSTR("\r\n"));
}

static void interpret_set(char *ptr)
{
	while(*ptr==' ')
	{
		ptr++;
	}

	int par = get_par_id(ptr);

	while(*ptr!=' ')
	{
		ptr++;
	}

	while(*ptr==' ')
	{
		ptr++;
	}

	const int64_t v = utility_atoll(ptr);

	set_par_value(par, v);
}

static void interpret_command(void)
{
	char* ptr = command_buffer;

	while(*ptr==' ')
	{
		ptr++;
	}

	switch (*ptr)
	{
		case 'e':
		{
			eepromSave();
			break;
		}
		case 'g':
		{
			interpret_get(ptr+1);
			break;
		}
		case 'o':
		{
			AVR_ERROR_HANDLER_P("power off", __LINE__);
			break;
		}
		case 'r':
		{
			uart_print_P(PSTR("reboot\r\n"));
			// Do eternal loop until we get reset by WTD.
			for(;;);
			break;
		}
		case 's':
		{
			interpret_set(ptr+1);
			break;
		}
		default:
			UART_PRINT_P("?\r\n");
			break;
	}
}


void cmd_init()
{
	command_length=0;
}


void cmd_process()
{
	const int ch = uart_getchar();
	if (ch >= 0)
	{
		if (ch>=' ')
		{
			if (command_length>=sizeof(command_buffer)-1)
			{
				UART_PRINT_P("?\r\n");
				command_length=0;
			}
			else
			{
				command_buffer[command_length] = ch;
				command_length++;
			}
		}
		else if ((ch == '\n') || (ch == '\r'))
		{
			command_buffer[command_length] = 0;
			interpret_command();
			command_length = 0;
		}
		else if (ch == 0x1b)
		{
			// esc, do eternal loop until we get reset by WTD.
			// TODO Should we do RELAY_OFF() here?
			for(;;);
		}
		else
		{
			uart_print_hex8(ch);
			command_length = 0;
		}
	}
}

