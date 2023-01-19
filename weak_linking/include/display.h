#pragma once
#include "error.h"

#define DISPLAY_ADDRESS     0xAF
#define DISPLAY_REG_INIT    0x10
#define DISPLAY_REG_UPDATE  0x20

bool display_init();
void display_update( const char* info );
