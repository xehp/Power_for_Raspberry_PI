/*
game.c

The main state of this program.

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

2021-04-22 Created. /Henrik
*/

#include <avr/pgmspace.h>
#include <stdint.h>
#include "avr_cfg.h"
#include "avr_sys.h"
#include "avr_uart.h"
#include "avr_tmr0.h"
#include "avr_tmr1.h"
#include "avr_ports.h"
#include "avr_tmr2.h"
#include "avr_eeprom.h"
#include "utility.h"
#include "power.h"
#include "game.h"




enum
{
	game_state_idle,
	game_state_charging,
	game_state_normal,
	game_state_off,
};

#define MSG_CAT_SIZE 3
#define MSG_CMD_SIZE (8-MSG_CAT_SIZE)
#define MSG_CMD_MASK ((1<<MSG_CMD_SIZE)-1)

#define DEV_TYPE_SIZE 2
#define PLAYER_ID_SIZE (8-DEV_TYPE_SIZE)
#define PLAYER_ID_MASK ((1<<PLAYER_ID_SIZE)-1)


static int8_t game_state = 0;
static int16_t game_timer_ms = 0;
static int8_t game_counter = 0;
static uint16_t top_mv = 0;

void game_init(void)
{
	UART_PRINT_P("game\r\n");
	game_timer_ms = avr_systime_ms_16();
}


void game_process(void)
{
	//const int16_t t = avr_systime_ms_16();
	//const int16_t d = t-game_timer_ms;
}

void game_tick_s()
{
	const uint16_t v = power_get_voltage_mV(6);
	switch(game_state)
	{
		case game_state_idle:
			if (game_counter>=ee.min_off_time_s)
			{
				top_mv = v;
				game_state = game_state_charging;
			}
			else
			{
				game_counter++;
			}
			break;

		case game_state_charging:
			if (v > top_mv)
			{
				top_mv = v;
			}
			else
			{
				top_mv--;
			}
			if (v>ee.min_voltage_to_start_mv)
			{
				RELAY_LOOP_ON();
				RELAY_MAIN_ON();
				RELAY_EXT_ON();
				UART_PRINT_P("game_state_normal\r\n");
				game_state = game_state_normal;
			}
			break;
		case game_state_normal:
			if (v > top_mv)
			{
				top_mv = v;
			}
			else
			{
				top_mv--;
			}
			if (((v + ee.max_drop_mv) < top_mv) || (v < ee.warning_at_mv))
			{
				RELAY_LOOP_OFF();
				UART_PRINT_P("game_state_off\r\n");
				game_state = game_state_off;
				game_counter = 0;
			}
			break;
		case game_state_off:
			if (v > top_mv)
			{
				top_mv = v;
			}
			else
			{
				top_mv--;
			}
			if ((game_counter>=ee.restart_time_s) || (v<ee.shutdown_at_mv))
			{
				RELAY_MAIN_OFF();
				RELAY_EXT_OFF();
				UART_PRINT_P("game_state_idle\r\n");
				game_state = game_state_idle;
			}
			else
			{
				game_counter++;
			}
			break;
	}
}

int8_t game_get_state()
{
	return game_state;
}
