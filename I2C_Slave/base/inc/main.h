/*
 * main.h
 *
 *  Created on: 03.10.2012
 *      Author: icke
 */

#ifndef MAIN_H_
#define MAIN_H_

#include <avr/io.h>
#include <util/delay.h>
#include <avr/eeprom.h>

void handlePort(volatile uint8_t *ptr_DDR, volatile uint8_t *ptr_PORT,
		unsigned char eeprom_address, unsigned char tmp_PORT,
		unsigned char enable_mask);

#endif /* MAIN_H_ */
