/*
power.h

Provide functions to supervise the battery.

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

#ifndef POWER_H
#define POWER_H

void power_init(void);
void power_tick_fast(void);
void power_tick_s(void);
int32_t power_get_voltage_mV(uint8_t channel);
int8_t power_get_state(void);

#endif
