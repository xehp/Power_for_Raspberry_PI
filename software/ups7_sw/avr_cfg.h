/*
avr_cfg.h

provide functions to configure SW to match hardware

Copyright (C) 2021 Henrik Bjorkman www.eit.se/hb.

This file is free software; you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License version 2.1.

Removing this comment or the history section is not allowed.
If you modify this code make a note about it in the history
section below. That is required!

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

History

2005-03-23 Created by Henrik Bjorkman
2021-04-20 Updated. /Henrik
*/


#ifndef AVR_CFG_H
#define AVR_CFG_H

// Use 0 or 1 here
// For HW 2021-04-05 use HW_VERSION 0
// For HW 2021-04-23 or 2021-04-27 use 1
// For HW 2021-05-27 use HW_VERSION 2 (wrong transistor was used)
// For HW after 2021-05-27 it is so far HW_VERSION 1 to use.
#define HW_VERSION 2

#define AVR_FOSC 7370000

// If FOSC is 16 MHz and 115200 is selected here we get 118000 baud instead.
#define UART_BAUDRATE 115200


// Using pin PD3 for debug LED
#define DEBUG_LED_DDR DDRB
#define DEBUG_LED_PORT PORTB
#define DEBUG_LED_BIT PB5
#define DEBUG_LED_ACTIVE_HIGH

// Using pin PD3 for charging indication LEDs
//#define POWER_LED_DDR DDRD
//#define POWER_LED_PORT PORTD
//#define POWER_LED_BIT PD3


// Configure timer use. Make sure to use each timer for only one thing.


// We can use timer0 or timer2 as system clock
// Uncomment one of these:
//#define AVR_SYS_USE_TMR0
#define AVR_SYS_USE_TMR2




// Configuration of IO pins

#define RELAY_CHARGE_DDR DDRD
#define RELAY_CHARGE_PORT PORTD
#define RELAY_CHARGE_BIT PD7
#define RELAY_CHARGE_ACTIVE_LOW


#define RELAY_LOOP_DDR DDRB
#define RELAY_LOOP_PORT PORTB
#define RELAY_LOOP_BIT PB5
#define RELAY_LOOP_ACTIVE_HIGH


#define RELAY_MAIN_DDR DDRB
#define RELAY_MAIN_PORT PORTB
#define RELAY_MAIN_BIT PB2
#define RELAY_MAIN_ACTIVE_LOW



#define RELAY_SHUNT0_DDR DDRB
#define RELAY_SHUNT0_PORT PORTB
#define RELAY_SHUNT0_BIT PB0
#define RELAY_SHUNT0_ACTIVE_LOW

#define RELAY_SHUNT1_DDR DDRB
#define RELAY_SHUNT1_PORT PORTB
#define RELAY_SHUNT1_BIT PB1
#define RELAY_SHUNT1_ACTIVE_LOW

#define RELAY_SHUNT2_DDR DDRD
#define RELAY_SHUNT2_PORT PORTD
#define RELAY_SHUNT2_BIT PD2
#define RELAY_SHUNT2_ACTIVE_LOW

#define RELAY_SHUNT3_DDR DDRD
#define RELAY_SHUNT3_PORT PORTD
#define RELAY_SHUNT3_BIT PD3
#define RELAY_SHUNT3_ACTIVE_LOW

#define RELAY_SHUNT4_DDR DDRD
#define RELAY_SHUNT4_PORT PORTD
#define RELAY_SHUNT4_BIT PD4
#define RELAY_SHUNT4_ACTIVE_LOW

#define RELAY_SHUNT5_DDR DDRD
#define RELAY_SHUNT5_PORT PORTD
#define RELAY_SHUNT5_BIT PD5
#define RELAY_SHUNT5_ACTIVE_LOW

#define RELAY_SHUNT6_DDR DDRD
#define RELAY_SHUNT6_PORT PORTD
#define RELAY_SHUNT6_BIT PD6
#define RELAY_SHUNT6_ACTIVE_LOW



#define RELAY_EXT_DDR DDRB
#define RELAY_EXT_PORT PORTB
#define RELAY_EXT_BIT PB3
#define RELAY_EXT_ACTIVE_LOW



// Input for trigger button, PC2
// NOTE in next HW version 2021-04-24 and later trigger will be active high
#define TRIGGER_PORT PORTB
#define TRIGGER_PORT_PIN PINB
#define TRIGGER_BIT PB4
#define TRIGGER_ACTIVE_LOW



// Using pin PD3 for charging indication LEDs
// Active for serial port is a zero out.
//#define SOFT_UART_TXD_DDR DDRD
//#define SOFT_UART_TXD_PORT PORTD
//#define SOFT_UART_TXD_BIT PD3
//#define SOFT_UART_TXD_ACTIVE_LOW

// Using pin PD3 for charging indication LEDs
// Active for serial port is a zero out.
//#define SOFT_UART_RXD_DDR DDRD
//#define SOFT_UART_RXD_PIN PINB
//#define SOFT_UART_RXD_PORT PORTD
//#define SOFT_UART_RXD_BIT PD2
//#define SOFT_UART_RXD_ACTIVE_LOW

#endif
