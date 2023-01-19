#ifndef HARDWARE_ABSTRACTION
#define HARDWARE_ABSTRACTION

#include <stdint.h>
/* In testing use fake functions to record calls to IO memory */
uint8_t IO_MEM_RD8(uint32_t reg);
void IO_MEM_WR8(uint32_t reg, uint8_t val);


#endif /* Include guard */
