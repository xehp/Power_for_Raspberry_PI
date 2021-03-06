/*
utility.h

Provide miscellaneous utility functions.

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

2021-05-01 Created reusing code from other projects. /Henrik
*/

#ifndef UTILITY_H
#define UTILITY_H

#include <stdint.h>

// Unsigned integer division rounded
#define DIV_ROUNDED(a,b) (((a)+((b)/2))/(b))

// NOTE! buffer must be large enough! 32 bytes should do, not less.
char* utility_lltoa(int64_t num, char* str, int base);

int64_t utility_atoll(const char* str);

uint8_t translate_to_ir_code(uint8_t n);
uint8_t translate_from_ir_code(uint8_t c);

void utility_memcpy(uint8_t *dst, const uint8_t *src, uint8_t n);
int8_t utility_memcmp(const int8_t* ptr1, const int8_t* ptr2, uint8_t n);

#endif
