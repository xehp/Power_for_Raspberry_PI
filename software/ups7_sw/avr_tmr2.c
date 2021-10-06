/*
avr_tmr2.c

Provide functions to set up timer 2 hardware.

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

2021-04-20 created using code from avr_tmr0.c Henrik Bjorkman

*/

/*
When reading 16bit reg remember to read low byte first then high byte
when writing write high byte first then low byte but hopefully the C compiler does this.
For a list of available signals see:
http://www.nongnu.org/avr-libc/user-manual/index.html
*/


#include <avr/interrupt.h>
//#include <avr/signal.h>
#include <avr/pgmspace.h>

#include "avr_cfg.h"
#include "avr_ports.h"
#include "avr_tmr0.h"
#include "avr_tmr1.h"
#include "avr_tmr2.h"


/*
Clock select
0 No clock (stop)
1 No prescaling
2 clk/8
3 clk/32
4 clk/64
5 clk/128
6 clk/256
7 clk/1024.
*/
#define TMR2_PRESCALER_Stop 0
#define TMR2_PRESCALER_1 1
#define TMR2_PRESCALER_8 2
#define TMR2_PRESCALER_32 3
#define TMR2_PRESCALER_64 4
#define TMR2_PRESCALER_128 5
#define TMR2_PRESCALER_256 6
#define TMR2_PRESCALER_1024 7


#ifdef AVR_SYS_USE_TMR2


// local variables and defines, use 64 bit here to avoid issues with wrapping counters.
volatile int64_t timer2count;


#if defined SOFT_UART_TXD_BIT


// Size must be power of 2. So 2, 4, 8, 16...
#define TX1_FIFO_SIZE 8

volatile uint8_t tx1_head;
volatile uint8_t tx1_tail;
volatile uint8_t tx1_buff[TX1_FIFO_SIZE];
volatile uint8_t tx1_state = 0;
volatile uint8_t tx1_ch = 0;

#define TX1_FIFO_INC(index) ((index+1)&(TX1_FIFO_SIZE-1))

void tx1_fifo_init(void)
{
	tx1_head = 0;
	tx1_tail = 0;
	tx1_state = 0;
	tx1_ch = 0;
}

int8_t tx1_fifo_is_full()
{
  return ((TX1_FIFO_INC(tx1_head)) == tx1_tail);
}

static int8_t tx1_fifo_is_empty(void)
{
  return (tx1_head == tx1_tail);
}

void tx1_fifo_put(uint8_t bit)
{
	if (tx1_fifo_is_full())
	{
		tx1_tail = TX1_FIFO_INC(tx1_tail);
	}
	tx1_buff[tx1_head]=bit;
	tx1_head = TX1_FIFO_INC(tx1_head);
}

static int8_t tx1_fifo_take(void)
{
	/*if (tx1_fifo_is_empty())
	{
		return -1;
	}*/
	const int8_t d = tx1_buff[tx1_tail];
	tx1_tail = TX1_FIFO_INC(tx1_tail);
	return d;
}

#endif


#if defined SOFT_UART_RXD_BIT

// Size must be power of 2. So 2, 4, 8, 16...
#define RX1_FIFO_SIZE 8

volatile uint8_t rx1_head;
volatile uint8_t rx1_tail;
volatile uint8_t rx1_buff[RX1_FIFO_SIZE];
volatile uint8_t rx1_state = 0;
volatile uint8_t rx1_ch = 0;

#define RX1_FIFO_INC(index) ((index+1)&(RX1_FIFO_SIZE-1))

void rx1_fifo_init(void)
{
	rx1_head = 0;
	rx1_tail = 0;
	rx1_state = 0;
	rx1_ch = 0;
}

static int8_t rx1_fifo_is_full(void)
{
  return ((RX1_FIFO_INC(rx1_head)) == rx1_tail);
}

int8_t rx1_fifo_is_empty(void)
{
  return (rx1_head == rx1_tail);
}

static void rx1_fifo_put(uint8_t bit)
{
	if (rx1_fifo_is_full())
	{
		rx1_tail = RX1_FIFO_INC(rx1_tail);
	}
	rx1_buff[rx1_head]=bit;
	rx1_head = RX1_FIFO_INC(rx1_head);
}

int8_t rx1_fifo_take(void)
{
	if (rx1_fifo_is_empty())
	{
		return -1;
	}
	const int8_t d = rx1_buff[rx1_tail];
	rx1_tail = RX1_FIFO_INC(rx1_tail);
	return d;
}
#endif

// SIG_OVERFLOW0 renamed to TIMER0_OVF_vect according to:
// http://www.nongnu.org/avr-libc/user-manual/group__avr__interrupts.html


SIGNAL (TIMER2_OVF_vect)
{
	timer2count++;
}

SIGNAL (TIMER2_COMPA_vect)
{
	timer2count++;

	#if defined SOFT_UART_TXD_BIT
	// Following is not fully tested.
	switch(tx1_state)
	{
		case 0:
			if (!tx1_fifo_is_empty())
			{
				// start bit (zero)
				SOFT_UART_TXD_OFF();
				tx1_ch = tx1_fifo_take();
				tx1_state++;
			}
			break;
		case 3:
		case 6:
		case 9:
		case 12:
		case 15:
		case 18:
		case 21:
		case 24:
			if (tx1_ch & 1)
			{
				SOFT_UART_TXD_ON();
			}
			else
			{
				SOFT_UART_TXD_OFF();
			}
			tx1_ch = tx1_ch >> 1;
			tx1_state++;
			break;
		case (3*8+3):
			// stop bit
			SOFT_UART_TXD_ON();
			tx1_state++;
			break;
		case (3*8+6):
			tx1_state = 0;
			break;
		default:
			tx1_state++;
	}
	#endif

	#if defined SOFT_UART_RXD_BIT
	// Following is not fully tested.
	switch(rx1_state)
	{
		case 0:
			if(SOFT_UART_RXD_READ())
			{
				// wait for a start bit (0).
			}
			else
			{
				// possible start bit (a zero)
				rx1_ch = 0;
				rx1_state++;
			}
			break;
		case 1:
			// middle of startbit
			if (SOFT_UART_RXD_READ())
			{
				// It was just noise (not a start bit).
				rx1_state = 0;
			}
			else
			{
				rx1_state++;
			}
			break;
		case 4:
		case 7:
		case 10:
		case 13:
		case 16:
		case 19:
		case 22:
		case 25:
			rx1_ch = rx1_ch >> 1 | ((SOFT_UART_RXD_READ() ? 1 : 0) << (8-1));
			rx1_state++;
			break;
		case (8*3)+4:
			// stop bit
			if (SOFT_UART_RXD_READ())
			{
				rx1_fifo_put(rx1_ch);
			}
			else
			{
				// Not a valid stop bit, ignore received char.
			}
			rx1_state = 0;
			break;
		default:
			rx1_state++;
			break;
	}
	#endif
}

int64_t avr_tmr2_get_tick_64(void)
{
	int64_t tmp;
	cli(); // disable global interrupts
	tmp=timer2count;
	sei(); // enable global interrupts
	return tmp;
}

// If only 16 bits are needed use this one instead of avr_tmr0_get_tick_64, it will be faster.
int16_t avr_tmr2_get_tick_16(void)
{
	int16_t tmp;
	cli(); // disable global interrupts
	tmp=timer2count;
	sei(); // enable global interrupts
	return tmp;
}

// set up hardware (port directions, registers etc.)
void avr_tmr2_init(void)
{
	#if defined SOFT_UART_TXD_BIT
	// Baudrate will be 1/3 of ticks per second (see below)
	SOFT_UART_TXD_ENABLE();
	tx1_fifo_init();
	#endif

	#if defined SOFT_UART_RXD_BIT
    SOFT_UART_RXD_INIT();
	rx1_fifo_init();
	#endif

	// set up timer 2

	// No output from this timer so COM2A and COM2B shall remain zero.

	#if (AVR_TMR2_DIVIDER == (1024L*256L))

	// Waveform Generation Mode 0 (default)
	TCCR2B |= (TMR2_PRESCALER_1024<<CS20);

	#else

	// Wanted do do it like this but it does not work.
	// Waveform Generation Mode
	// Clear Timer on Compare Match (CTC) mode 2
	//const uint8_t wgm = 2;
	//TCCR2A |= ((wgm&0x3) << WGM20);
	//TCCR2B |= (((wgm>>2)&1)<<WGM22);

	TCCR2A=(1<<WGM21); // set CTC mode (2)


	#if (AVR_TMR2_DIVIDER == (1024L*125L))
	// This will give 125 ticks per second with 16 MHz clock
	OCR2A=125-1;
	TCCR2B = (TMR2_PRESCALER_1024<<CS20);
	#elif (AVR_TMR2_DIVIDER == (256L*125L))
	// This will give 500 ticks per second with 16 MHz clock
	OCR2A=125-1;
	TCCR2B = (TMR2_PRESCALER_256<<CS20);
    #elif (AVR_TMR2_DIVIDER == (128L*125L))
	// This will give 1000 ticks per second with 16 MHz clock
	OCR2A=125-1;
	TCCR2B=(TMR2_PRESCALER_128<<CS20);
    #elif (AVR_TMR2_DIVIDER == (64L*125L))
	// This will give 1000 ticks per second with 8 MHz clock
	OCR2A=125-1;
	TCCR2B = (TMR2_PRESCALER_64<<CS20);
	#elif (AVR_TMR2_DIVIDER == (8L*250L))
	// This will give 3685 ticks per second with 7,37 MHz clock
	OCR2A=250-1;
	TCCR2B=(TMR2_PRESCALER_8<<CS20);
	#else
	#error DIVIDER combo not yet implemented.
	#endif
	#endif

    // enable tmr2 interrupts
    // Timer/Counter2 Output Compare Match Interrupt Enable
	TIMSK2 |= /*(1<<TOIE2) ||*/ (1<<OCIE2A);

	// If tmr2 interrupts need to be disabled do:
	//TIMSK2 &= (unsigned char)~(/*(1<<TOIE2) ||*/ (1<<OCIE2A));
}

#endif
