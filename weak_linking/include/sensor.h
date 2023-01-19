#pragma once

#include "error.h"

#define SENSOR_ADDRESS 0xAA
#define SENSOR_REG_READ 0xF0

bool sensor_init();
float sensor_read();
