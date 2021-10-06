/*
avr_ports.h

provide functions to use general purpose IO ports.

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

2021-04-20 Created. /Henrik
*/

#ifndef AVR_PORTS_H
#define AVR_PORTS_H

#include "avr_cfg.h"

// Macros to turn various functions on or off


/* enable relay power pin as output */
#define RELAY_CHARGE_ENABLE() RELAY_CHARGE_DDR |= _BV(RELAY_CHARGE_BIT);

/* disable relay power pin as output */
#define RELAY_CHARGE_DISABLE() RELAY_CHARGE_DDR &= ~(_BV(RELAY_CHARGE_BIT));

/* set relay power output to on or off */
#ifdef RELAY_CHARGE_ACTIVE_HIGH
#define RELAY_CHARGE_ON() RELAY_CHARGE_PORT |= _BV(RELAY_CHARGE_BIT);
#define RELAY_CHARGE_OFF() RELAY_CHARGE_PORT &= ~_BV(RELAY_CHARGE_BIT);
#elif defined RELAY_CHARGE_ACTIVE_LOW
#define RELAY_CHARGE_ON() RELAY_CHARGE_PORT &= ~_BV(RELAY_CHARGE_BIT);
#define RELAY_CHARGE_OFF() RELAY_CHARGE_PORT |= _BV(RELAY_CHARGE_BIT);
#endif



/* enable relay power pin as output */
#define RELAY_MAIN_ENABLE() RELAY_MAIN_DDR |= _BV(RELAY_MAIN_BIT);

/* disable relay power pin as output */
#define RELAY_MAIN_DISABLE() RELAY_MAIN_DDR &= ~(_BV(RELAY_MAIN_BIT));

/* set relay power output to on or off */
#ifdef RELAY_MAIN_ACTIVE_HIGH
#define RELAY_MAIN_ON() RELAY_MAIN_PORT |= _BV(RELAY_MAIN_BIT);
#define RELAY_MAIN_OFF() RELAY_MAIN_PORT &= ~_BV(RELAY_MAIN_BIT);
#elif defined RELAY_MAIN_ACTIVE_LOW
#define RELAY_MAIN_ON() RELAY_MAIN_PORT &= ~_BV(RELAY_MAIN_BIT);
#define RELAY_MAIN_OFF() RELAY_MAIN_PORT |= _BV(RELAY_MAIN_BIT);
#endif



/* enable relay power pin as output */
#define RELAY_LOOP_ENABLE() RELAY_LOOP_DDR |= _BV(RELAY_LOOP_BIT);

/* disable relay power pin as output */
#define RELAY_LOOP_DISABLE() RELAY_LOOP_DDR &= ~(_BV(RELAY_LOOP_BIT));

/* set relay power output to on or off */
#ifdef RELAY_LOOP_ACTIVE_HIGH
#define RELAY_LOOP_ON() RELAY_LOOP_PORT |= _BV(RELAY_LOOP_BIT);
#define RELAY_LOOP_OFF() RELAY_LOOP_PORT &= ~_BV(RELAY_LOOP_BIT);
#elif defined RELAY_LOOP_ACTIVE_LOW
#define RELAY_LOOP_ON() RELAY_LOOP_PORT &= ~_BV(RELAY_LOOP_BIT);
#define RELAY_LOOP_OFF() RELAY_LOOP_PORT |= _BV(RELAY_LOOP_BIT);
#endif




/* enable relay power pin as output */
#define RELAY_SHUNT0_ENABLE() RELAY_SHUNT0_DDR |= _BV(RELAY_SHUNT0_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT0_DISABLE() RELAY_SHUNT0_DDR &= ~(_BV(RELAY_SHUNT0_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT0_ACTIVE_HIGH
#define RELAY_SHUNT0_ON() RELAY_SHUNT0_PORT |= _BV(RELAY_SHUNT0_BIT);
#define RELAY_SHUNT0_OFF() RELAY_SHUNT0_PORT &= ~_BV(RELAY_SHUNT0_BIT);
#elif defined RELAY_SHUNT0_ACTIVE_LOW
#define RELAY_SHUNT0_ON() RELAY_SHUNT0_PORT &= ~_BV(RELAY_SHUNT0_BIT);
#define RELAY_SHUNT0_OFF() RELAY_SHUNT0_PORT |= _BV(RELAY_SHUNT0_BIT);
#endif



/* enable relay power pin as output */
#define RELAY_SHUNT1_ENABLE() RELAY_SHUNT1_DDR |= _BV(RELAY_SHUNT1_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT1_DISABLE() RELAY_SHUNT1_DDR &= ~(_BV(RELAY_SHUNT1_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT1_ACTIVE_HIGH
#define RELAY_SHUNT1_ON() RELAY_SHUNT1_PORT |= _BV(RELAY_SHUNT1_BIT);
#define RELAY_SHUNT1_OFF() RELAY_SHUNT1_PORT &= ~_BV(RELAY_SHUNT1_BIT);
#elif defined RELAY_SHUNT1_ACTIVE_LOW
#define RELAY_SHUNT1_ON() RELAY_SHUNT1_PORT &= ~_BV(RELAY_SHUNT1_BIT);
#define RELAY_SHUNT1_OFF() RELAY_SHUNT1_PORT |= _BV(RELAY_SHUNT1_BIT);
#endif


/* enable relay power pin as output */
#define RELAY_SHUNT2_ENABLE() RELAY_SHUNT2_DDR |= _BV(RELAY_SHUNT2_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT2_DISABLE() RELAY_SHUNT2_DDR &= ~(_BV(RELAY_SHUNT2_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT2_ACTIVE_HIGH
#define RELAY_SHUNT2_ON() RELAY_SHUNT2_PORT |= _BV(RELAY_SHUNT2_BIT);
#define RELAY_SHUNT2_OFF() RELAY_SHUNT2_PORT &= ~_BV(RELAY_SHUNT2_BIT);
#elif defined RELAY_SHUNT2_ACTIVE_LOW
#define RELAY_SHUNT2_ON() RELAY_SHUNT2_PORT &= ~_BV(RELAY_SHUNT2_BIT);
#define RELAY_SHUNT2_OFF() RELAY_SHUNT2_PORT |= _BV(RELAY_SHUNT2_BIT);
#endif


/* enable relay power pin as output */
#define RELAY_SHUNT3_ENABLE() RELAY_SHUNT3_DDR |= _BV(RELAY_SHUNT3_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT3_DISABLE() RELAY_SHUNT3_DDR &= ~(_BV(RELAY_SHUNT3_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT3_ACTIVE_HIGH
#define RELAY_SHUNT3_ON() RELAY_SHUNT3_PORT |= _BV(RELAY_SHUNT3_BIT);
#define RELAY_SHUNT3_OFF() RELAY_SHUNT3_PORT &= ~_BV(RELAY_SHUNT3_BIT);
#elif defined RELAY_SHUNT3_ACTIVE_LOW
#define RELAY_SHUNT3_ON() RELAY_SHUNT3_PORT &= ~_BV(RELAY_SHUNT3_BIT);
#define RELAY_SHUNT3_OFF() RELAY_SHUNT3_PORT |= _BV(RELAY_SHUNT3_BIT);
#endif




/* enable relay power pin as output */
#define RELAY_SHUNT4_ENABLE() RELAY_SHUNT4_DDR |= _BV(RELAY_SHUNT4_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT4_DISABLE() RELAY_SHUNT4_DDR &= ~(_BV(RELAY_SHUNT4_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT4_ACTIVE_HIGH
#define RELAY_SHUNT4_ON() RELAY_SHUNT4_PORT |= _BV(RELAY_SHUNT4_BIT);
#define RELAY_SHUNT4_OFF() RELAY_SHUNT4_PORT &= ~_BV(RELAY_SHUNT4_BIT);
#elif defined RELAY_SHUNT4_ACTIVE_LOW
#define RELAY_SHUNT4_ON() RELAY_SHUNT4_PORT &= ~_BV(RELAY_SHUNT4_BIT);
#define RELAY_SHUNT4_OFF() RELAY_SHUNT4_PORT |= _BV(RELAY_SHUNT4_BIT);
#endif



/* enable relay power pin as output */
#define RELAY_SHUNT5_ENABLE() RELAY_SHUNT5_DDR |= _BV(RELAY_SHUNT5_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT5_DISABLE() RELAY_SHUNT5_DDR &= ~(_BV(RELAY_SHUNT5_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT5_ACTIVE_HIGH
#define RELAY_SHUNT5_ON() RELAY_SHUNT5_PORT |= _BV(RELAY_SHUNT5_BIT);
#define RELAY_SHUNT5_OFF() RELAY_SHUNT5_PORT &= ~_BV(RELAY_SHUNT5_BIT);
#elif defined RELAY_SHUNT5_ACTIVE_LOW
#define RELAY_SHUNT5_ON() RELAY_SHUNT5_PORT &= ~_BV(RELAY_SHUNT5_BIT);
#define RELAY_SHUNT5_OFF() RELAY_SHUNT5_PORT |= _BV(RELAY_SHUNT5_BIT);
#endif



/* enable relay power pin as output */
#define RELAY_SHUNT6_ENABLE() RELAY_SHUNT6_DDR |= _BV(RELAY_SHUNT6_BIT);

/* disable relay power pin as output */
#define RELAY_SHUNT6_DISABLE() RELAY_SHUNT6_DDR &= ~(_BV(RELAY_SHUNT6_BIT));

/* set relay power output to on or off */
#ifdef RELAY_SHUNT6_ACTIVE_HIGH
#define RELAY_SHUNT6_ON() RELAY_SHUNT6_PORT |= _BV(RELAY_SHUNT6_BIT);
#define RELAY_SHUNT6_OFF() RELAY_SHUNT6_PORT &= ~_BV(RELAY_SHUNT6_BIT);
#elif defined RELAY_SHUNT6_ACTIVE_LOW
#define RELAY_SHUNT6_ON() RELAY_SHUNT6_PORT &= ~_BV(RELAY_SHUNT6_BIT);
#define RELAY_SHUNT6_OFF() RELAY_SHUNT6_PORT |= _BV(RELAY_SHUNT6_BIT);
#endif



/* enable relay power pin as output */
#define RELAY_EXT_ENABLE() RELAY_EXT_DDR |= _BV(RELAY_EXT_BIT);

/* disable relay power pin as output */
#define RELAY_EXT_DISABLE() RELAY_EXT_DDR &= ~(_BV(RELAY_EXT_BIT));

/* set relay power output to on or off */
#ifdef RELAY_EXT_ACTIVE_HIGH
#define RELAY_EXT_ON() RELAY_EXT_PORT |= _BV(RELAY_EXT_BIT);
#define RELAY_EXT_OFF() RELAY_EXT_PORT &= ~_BV(RELAY_EXT_BIT);
#elif defined RELAY_EXT_ACTIVE_LOW
#define RELAY_EXT_ON() RELAY_EXT_PORT &= ~_BV(RELAY_EXT_BIT);
#define RELAY_EXT_OFF() RELAY_EXT_PORT |= _BV(RELAY_EXT_BIT);
#endif







#define TRIGGER_INIT() {TRIGGER_PORT |= _BV(TRIGGER_BIT);} // activate internal pull up
#ifdef TRIGGER_ACTIVE_HIGH
#define TRIGGER_READ() (TRIGGER_PORT_PIN & _BV(TRIGGER_BIT))
#elif defined TRIGGER_ACTIVE_LOW
#define TRIGGER_READ() ((TRIGGER_PORT_PIN & _BV(TRIGGER_BIT)) == 0)
#endif

#if defined SOFT_UART_RXD_DDR
// Following is not tested.
#define SOFT_UART_RXD_INIT() {SOFT_UART_RXD_PORT |= _BV(SOFT_UART_RXD_BIT);} // activate internal pull up
#ifdef SOFT_UART_RXD_ACTIVE_HIGH
#define SOFT_UART_RXD_READ() (SOFT_UART_RXD_PIN & _BV(SOFT_UART_RXD_BIT))
#elif defined SOFT_UART_RXD_ACTIVE_LOW
#define SOFT_UART_RXD_READ() ((SOFT_UART_RXD_PIN & _BV(SOFT_UART_RXD_BIT)) == 0)
#endif
#endif

#if defined SOFT_UART_TXD_DDR
// Following is not tested.

/* enable relay power pin as output */
#define SOFT_UART_TXD_ENABLE() SOFT_UART_TXD_DDR |= _BV(SOFT_UART_TXD_BIT);

/* disable relay power pin as output */
#define SOFT_UART_TXD_DISABLE() SOFT_UART_TXD_DDR &= ~(_BV(SOFT_UART_TXD_BIT));

/* set relay power output to on or off */
#ifdef SOFT_UART_TXD_ACTIVE_HIGH
#define SOFT_UART_TXD_ON() SOFT_UART_TXD_PORT |= _BV(SOFT_UART_TXD_BIT);
#define SOFT_UART_TXD_OFF() SOFT_UART_TXD_PORT &= ~_BV(SOFT_UART_TXD_BIT);
#elif defined SOFT_UART_TXD_ACTIVE_LOW
#define SOFT_UART_TXD_ON() SOFT_UART_TXD_PORT &= ~_BV(SOFT_UART_TXD_BIT);
#define SOFT_UART_TXD_OFF() SOFT_UART_TXD_PORT |= _BV(SOFT_UART_TXD_BIT);
#endif
#endif




#define IR_OUTPUT_ON() SOFT_UART_TXD_OFF()
#define IR_OUTPUT_OFF() SOFT_UART_TXD_ON()

#define INTERNAL_IR_READ() SOFT_UART_RXD_READ()


#ifdef DEBUG_LED_PORT


/* enable debug LED as output */
#define DEBUG_LED_ENABLE() DEBUG_LED_DDR|= _BV(DEBUG_LED_BIT);

/* disable debug LED as output */
#define DEBUG_LED_DISABLE() DEBUG_LED_DDR&= ~(_BV(DEBUG_LED_BIT));

/* set debug LED output to on or off */
#ifdef DEBUG_LED_ACTIVE_HIGH
#define DEBUG_LED_ON() {DEBUG_LED_PORT|= _BV(DEBUG_LED_BIT);}
#define DEBUG_LED_OFF() {DEBUG_LED_PORT &= ~_BV(DEBUG_LED_BIT);}
#define DEBUG_LED_IS_ON() (DEBUG_LED_PORT & _BV(DEBUG_LED_BIT))
#else
#define DEBUG_LED_ON() {DEBUG_LED_PORT &= ~_BV(DEBUG_LED_BIT);}
#define DEBUG_LED_OFF() {DEBUG_LED_PORT |= _BV(DEBUG_LED_BIT);}
#define DEBUG_LED_IS_ON() (!(DEBUG_LED_PORT & _BV(DEBUG_LED_BIT)))
#endif

#else

// Dummy macros, in case there is no debug LED.
#define DEBUG_LED_ENABLE()
#define DEBUG_LED_DISABLE()
#define DEBUG_LED_ON()
#define DEBUG_LED_OFF()

#endif


#ifdef POWER_LED_PORT


/* enable debug LED as output */
#define POWER_LED_ENABLE() POWER_LED_DDR|= _BV(POWER_LED_BIT);

/* disable debug LED as output */
#define POWER_LED_DISABLE() POWER_LED_DDR&= ~(_BV(POWER_LED_BIT));

/* set power LED output to on or off */
#ifdef POWER_LED_ACTIVE_HIGH
#define POWER_LED_ON() {POWER_LED_PORT|= _BV(POWER_LED_BIT);}
#define POWER_LED_OFF() {POWER_LED_PORT &= ~_BV(POWER_LED_BIT);}
#define POWER_LED_IS_ON() (POWER_LED_PORT & _BV(POWER_LED_BIT))
#else
#define POWER_LED_ON() {POWER_LED_PORT &= ~_BV(POWER_LED_BIT);}
#define POWER_LED_OFF() {POWER_LED_PORT |= _BV(POWER_LED_BIT);}
#define POWER_LED_IS_ON() (!(POWER_LED_PORT & _BV(POWER_LED_BIT)))
#endif

#else

// Dummy macros, in case there is no power LED.
#define POWER_LED_ENABLE()
#define POWER_LED_DISABLE()
#define POWER_LED_ON()
#define POWER_LED_OFF()
#define POWER_LED_IS_ON() 0
#endif


#endif
