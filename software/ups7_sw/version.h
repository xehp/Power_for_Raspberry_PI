/*
2016-08-08
Adapted for atmega328p
*/

// Enter name and version numbers here:
#define VERSION_NAME "ups7_sw"
#define VERSION_MAJOR 0
#define VERSION_MINOR 3
#define VERSION_DEBUG 2

// Don't edit these (only used internally in version.h):
#define VER_XSTR(s) VER_STR(s)
#define VER_STR(s) #s

#define VERSION_STRING VERSION_NAME " " VER_XSTR(VERSION_MAJOR) "." VER_XSTR(VERSION_MINOR) "." VER_XSTR(VERSION_DEBUG) " " GIT_VERSION
