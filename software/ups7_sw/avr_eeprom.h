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

#ifndef EEPROM_H_
#define EEPROM_H_


#include <stdint.h>



// A magic number so we can detect if expected format of stored eedata has been changed (don't use zero).
#define EEDATA_MAGIC_NR 0x0182

// Is there a old data format that we may encounter.
//#define EEDATA_LEGACY_MAGIC_NR 0x0122


typedef struct
{
	uint32_t magicNumber;
	uint32_t max_drop_mv;
	uint32_t min_voltage_to_start_mv;
	uint32_t min_off_time_s;
	int32_t shutdown_at_mv;
	int32_t warning_at_mv;
	int32_t charge_per_cell_mv;
	uint32_t restart_time_s;
	uint32_t nanoVoltsPerUnit0;
	uint32_t nanoVoltsPerUnit1;
	uint32_t nanoVoltsPerUnit2;
	uint32_t nanoVoltsPerUnit3;
	uint32_t nanoVoltsPerUnit4;
	uint32_t nanoVoltsPerUnit5;
	uint32_t nanoVoltsPerUnit6;
	uint32_t nanoVoltsPerUnit7;

	int32_t margin_charge_mV;
	int32_t margin_over_mV;
	int32_t margin_more_mV;

	int32_t max_shunting_mV;
	int32_t margin_under_mV;
	int32_t high_fault_threshold_mV;
	int32_t low_fault_margin_mV;

	int32_t ignore_lower_mV;
	uint32_t spare24;
	uint32_t spare25;
	uint32_t spare26;

	uint32_t spare27;
	uint32_t spare28;
	uint32_t spare29;
	uint32_t spare30;

	uint32_t checkSum;
}
EeDataStruct;


#ifdef EEDATA_LEGACY_MAGIC_NR
typedef struct
{
	uint32_t magicNumber;
	uint32_t ID;
	uint32_t device_type;
	uint32_t player_number;
	uint32_t spare4; // team?
	uint32_t nanoVoltsPerUnit;
	uint32_t stop_charging_battery_at_mv;
	uint32_t spare7;
	uint32_t spare8;
	uint32_t spare9;
	uint32_t spare10;
	uint32_t spare11;
	uint32_t spare12;
	uint32_t spare13;
	uint32_t spare14;
	uint32_t checkSum;
}
EeDataLegacyStruct;
#endif


extern EeDataStruct ee;


void eepromSave(void);
void eepromLoad(void);

#endif

