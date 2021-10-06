/*
main.c

Henriks AVR application

Copyright (C) 2021 Henrik Bjorkman www.eit.se/hb.

This file is free software; you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License version 2.1.

Removing this comment or the history section is not allowed. Even if only
a few lines from this file is actually used. If you modify this code make
a note about it in the history section below. That is required!

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
General Public License for more details.

History

2005-02-14 want to use serial port. Have adapted some code I found at http://www.lka.ch/projects/avr/ Henrik Bjorkman
2005-02-20 Will try to interpret some commands Henrik

*/


#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "avr_cfg.h"
#include "avr_sys.h"
#include "avr_uart.h"
#include "avr_ports.h"
#include "avr_tmr0.h"
#include "avr_tmr1.h"
#include "avr_eeprom.h"
#include "game.h"
#include "power.h"
#include "cmd.h"
#include "version.h"


//static const uint32_t ignore_mask = 0x00070077;

int16_t main_timer_ms=0;
int32_t main_counter_s=0;
int8_t main_state=0;
//static uint32_t log_pin = 0;

/*static void log_ports(void)
{
	const uint32_t b = PINB;
	const uint32_t c = PINC;
	const uint32_t d = PIND;
	const uint32_t p = (b << 16) | (c << 8) | (d);
	if ((log_pin | ignore_mask) != (p | ignore_mask))
	{
		UART_PRINT_P("pin ");
		uart_print_hex32(p);
		UART_PRINT_P("\r\n");
		log_pin = p;
	}
}*/

int main( void ) 
{
	// Initiate system timer. The one that give us milli seconds.
	avr_init();

	DEBUG_LED_ENABLE();
	DEBUG_LED_ON();


	// Initiate USART (serial port).
	uart_init();
	UART_PRINT_P("\r\n" VERSION_STRING "\r\n");

	avr_delay_ms_16(100);

	// Initiate all sub tasks here.

	/*#ifdef DEBUG_LED_PORT
	avr_blink(3); // just so we see that it started
	avr_wtd_reset_and_idle();
	#endif*/

	#if (defined AVR_SYS_USE_TMR0) || (defined IR_OUTPUT_USE_TMR0)
	avr_tmr0_init();
	#endif

	#if defined BEEP_USE_TMR1
	avr_tmr1_init();
	#endif

	UART_PRINT_P("enable IO\r\n");
	avr_delay_ms_16(100);

	TRIGGER_INIT();

	#if defined INTERNAL_IR_BIT
	INTERNAL_IR_INIT();
	#endif

	avr_delay_ms_16(100);

	eepromLoad();


	power_init();
	avr_delay_ms_16(100);

	game_init();
	avr_delay_ms_16(100);

	cmd_init();
	avr_delay_ms_16(100);

	DEBUG_LED_OFF();

	// All init is done, get ready to run main loop.
	UART_PRINT_P("main\r\n");
	main_timer_ms = avr_systime_ms_16() + 1000;

	// The main loop, this will run until power off.
	for(;;)
	{
		// Put all urgent tasks here. Things that need to be called more than once per second.

		cmd_process();

		game_process();

		power_tick_fast();

		//log_ports();

		switch(main_state)
		{
			case 0:
			{
				// Check if we reached next second.
				const int16_t t = avr_systime_ms_16();
				const int16_t d = t - main_timer_ms;
				if (d >= 0)
				{
					// Start a new sequence of calls to second ticks.
					// Not doing all at once since that might disturb more urgent tasks.
					main_timer_ms += 1000;
					++main_state;
					DEBUG_LED_ON();
				}
				break;
			}

			// Put tasks to be made once per second or less here.
			// Just as cases as needed. Just don't forget to do "++main_state".
			case 1:
			{
				// log digital inputs
				//log_ports();
				++main_state;
				break;
			}
			case 2:
				power_tick_s();
				++main_state;
				break;
			case 3:
				++main_state;
				break;
			case 4:
				game_tick_s();
				++main_state;
				break;
			default:
			    // All tasks to do once per second are done for this time.
				DEBUG_LED_OFF();
				++main_counter_s;
				main_state=0;
				break;
		}


		// Set CPU in idle mode to save energy, it will wake up next time there is an interrupt
		avr_wtd_reset_and_idle();
	}

	return(0);
} // end main()



