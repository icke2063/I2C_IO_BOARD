/**
 * @file	eeprom_mapping.h
 *
 * @date	03.10.2012
 * @author	icke
 */

#ifndef EEPROM_MAPPING_H_
#define EEPROM_MAPPING_H_

#define	PIN_DISABLED	0x00
#define PIN_INPUT		0x01
#define PIN_SWITCH		0x02
#define PIN_PULSE		0x03
#define PIN_S0			0x04
#define PIN_UART		0x05
#define PIN_OW			0x06
#define PIN_ADC			0x07
/**
 * first block is virtual -> map SRAM into EEPROM
 *
 * Byte 0		:	ID
 * Byte 1		:	PORTB
 * Byte 2		:	PORTC
 * Byte 3		:	PORTD
 *
 * Byte 8+9		:	ADC 0
 * Byte A+B		:	ADC 1
 * Byte C+D		:	ADC 2
 * Byte E+F		:	ADC 3
 *
 */


#define EEPROM_MASK_PORTB	0x00

#define EEPROM_FUNC_PORTB	0x30
#define EEPROM_FUNC_PB_0	EEPROM_FUNC_PORTB
#define EEPROM_FUNC_PB_1	(EEPROM_FUNC_PB_0 + 1)
#define EEPROM_FUNC_PB_2	(EEPROM_FUNC_PB_1 + 1)
#define EEPROM_FUNC_PB_3	(EEPROM_FUNC_PB_2 + 1)

#define EEPROM_FUNC_PB_4	(EEPROM_FUNC_PB_3 + 1)
#define EEPROM_FUNC_PB_5	(EEPROM_FUNC_PB_4 + 1)
#define EEPROM_FUNC_PB_6	(EEPROM_FUNC_PB_5 + 1)
#define EEPROM_FUNC_PB_7	(EEPROM_FUNC_PB_6 + 1)

/**
 * PORTC
 * - PIN0-3: I/O;ADC
 */

#define EEPROM_MASK_PORTC	0x0F

#define EEPROM_FUNC_PORTC	0x38
#define EEPROM_FUNC_PC_0	EEPROM_FUNC_PORTC
#define EEPROM_FUNC_PC_1	(EEPROM_FUNC_PC_0 + 1)
#define EEPROM_FUNC_PC_2	(EEPROM_FUNC_PC_1 + 1)
#define EEPROM_FUNC_PC_3	(EEPROM_FUNC_PC_2 + 1)

#define EEPROM_FUNC_PC_4	(EEPROM_FUNC_PC_3 + 1)
#define EEPROM_FUNC_PC_5	(EEPROM_FUNC_PC_4 + 1)

/**
 * PORTD
 * - PD0:	I/O;RXD
 * - PD1:	I/O;TXD
 * - PD2-3:	I/O;INT0-1
 * - PD4-7: I/O
 */
#define EEPROM_MASK_PORTD	0xFF

#define EEPROM_FUNC_PORTD	0x40
#define EEPROM_FUNC_PD_0	EEPROM_FUNC_PORTD
#define EEPROM_FUNC_PD_1	(EEPROM_FUNC_PD_0 + 1)
#define EEPROM_FUNC_PD_2	(EEPROM_FUNC_PD_1 + 1)
#define EEPROM_FUNC_PD_3	(EEPROM_FUNC_PD_2 + 1)

#define EEPROM_FUNC_PD_4	(EEPROM_FUNC_PD_3 + 1)
#define EEPROM_FUNC_PD_5	(EEPROM_FUNC_PD_4 + 1)
#define EEPROM_FUNC_PD_6	(EEPROM_FUNC_PD_5 + 1)
#define EEPROM_FUNC_PD_7	(EEPROM_FUNC_PD_6 + 1)


#endif /* EEPROM_MAPPING_H_ */
