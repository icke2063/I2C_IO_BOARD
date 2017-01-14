/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	I2C slave config file

 Dieses Programm ist freie Software. Sie k�nnen es unter den Bedingungen der
 GNU General Public License, wie von der Free Software Foundation ver�ffentlicht,
 weitergeben und/oder modifizieren, entweder gem�� Version 2 der Lizenz oder
 (nach Ihrer Option) jeder sp�teren Version.

 Die Ver�ffentlichung dieses Programms erfolgt in der Hoffnung,
 da� es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE,
 sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT
 F�R EINEN BESTIMMTEN ZWECK. Details finden Sie in der GNU General Public License.

 Sie sollten eine Kopie der GNU General Public License zusammen mit diesem
 Programm erhalten haben.
 Falls nicht, schreiben Sie an die Free Software Foundation,
 Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
------------------------------------------------------------------------------*/
#ifndef _SLAVE_CONFIG_H_
#define _SLAVE_CONFIG_H_

#include <default_iopin.h>

/// Slave Identification Number
/**
 * This number is used by i2c master to identify this i2c slave as "i2c_io_board"
 */
#define	SLAVE_ID	0x2A
/// default I2C address if value of eeprom is unusable
#define DEFAULT_SLAVE_ADRESSE 0x51
/// count of real useable pins
#define COUNT_IO_PINS 16


/**
 * pin mapping
 * - port pointer	[out]
 * - pin pointer	[in]
 * - ddr pointer
 * - pin number
 */

///UARTTX
#undef UARTTX_PORT
	#define UARTTX_PORT	&PORTD
#undef UARTTX_PIN
	#define UARTTX_PIN	&PIND
#undef UARTTX_DDR
	#define UARTTX_DDR	&DDRD
#undef UARTTX_PINNR
	#define UARTTX_PINNR	PD1

///VPIN_0	(Data2)
#undef VIO_PORT_0
	#define VIO_PORT_0	&PORTC
#undef VIO_PIN_0
	#define VIO_PIN_0	&PINC
#undef VIO_DDR_0
	#define VIO_DDR_0	&DDRC
#undef VIO_PINNR_0
	#define VIO_PINNR_0	PC2

///VPIN_1 (Data3)
#undef VIO_PORT_1
	#define VIO_PORT_1	&PORTC
#undef VIO_PIN_1
	#define VIO_PIN_1	&PINC
#undef VIO_DDR_1
	#define VIO_DDR_1	&DDRC
#undef VIO_PINNR_1
	#define VIO_PINNR_1	PC3

///VPIN_2 (Data4)
#undef VIO_PORT_2
	#define VIO_PORT_2	&PORTC
#undef VIO_PIN_2
	#define VIO_PIN_2	&PINC
#undef VIO_DDR_2
	#define VIO_DDR_2	&DDRC
#undef VIO_PINNR_2
	#define VIO_PINNR_2	PC4

///VPIN_3 (Data5)
#undef VIO_PORT_3
	#define VIO_PORT_3	&PORTC
#undef VIO_PIN_3
	#define VIO_PIN_3	&PINC
#undef VIO_DDR_3
	#define VIO_DDR_3	&DDRC
#undef VIO_PINNR_3
	#define VIO_PINNR_3	PC5

///VPIN_4 (Data6)
#undef VIO_PORT_4
	#define VIO_PORT_4	&PORTC
#undef VIO_PIN_4
	#define VIO_PIN_4	&PINC
#undef VIO_DDR_4
	#define VIO_DDR_4	&DDRC
#undef VIO_PINNR_4
	#define VIO_PINNR_4	PC6

///VPIN_5 (Data7)
#undef VIO_PORT_5
	#define VIO_PORT_5	&PORTC
#undef VIO_PIN_5
	#define VIO_PIN_5	&PINC
#undef VIO_DDR_5
	#define VIO_DDR_5	&DDRC
#undef VIO_PINNR_5
	#define VIO_PINNR_5	PC7

///VPIN_6
#undef VIO_PORT_6
	#define VIO_PORT_6	NULL
#undef VIO_PIN_6
	#define VIO_PIN_6	NULL
#undef VIO_DDR_6
	#define VIO_DDR_6	NULL
#undef VIO_PINNR_6
	#define VIO_PINNR_6	0

///VPIN_7
#undef VIO_PORT_7
	#define VIO_PORT_7	NULL
#undef VIO_PIN_7
	#define VIO_PIN_7	NULL
#undef VIO_DDR_7
	#define VIO_DDR_7	NULL
#undef VIO_PINNR_7
	#define VIO_PINNR_7	0

///VPIN_8 (Select)
#undef VIO_PORT_8
	#define VIO_PORT_8	&PORTA
#undef VIO_PIN_8
	#define VIO_PIN_8	&PINA
#undef VIO_DDR_8
	#define VIO_DDR_8	&DDRA
#undef VIO_PINNR_8
	#define VIO_PINNR_8	PA3

///VPIN_9 (Paper Out)
#undef VIO_PORT_9
	#define VIO_PORT_9	&PORTA
#undef VIO_PIN_9
	#define VIO_PIN_9	&PINA
#undef VIO_DDR_9
	#define VIO_DDR_9	&DDRA
#undef VIO_PINNR_9
	#define VIO_PINNR_9	PA2

///VPIN_A (Busy)
#undef VIO_PORT_A
	#define VIO_PORT_A	&PORTA
#undef VIO_PIN_A
	#define VIO_PIN_A	&PINA
#undef VIO_DDR_A
	#define VIO_DDR_A	&DDRA
#undef VIO_PINNR_A
	#define VIO_PINNR_A	PA1

///VPIN_B (Ack)
#undef VIO_PORT_B
	#define VIO_PORT_B	&PORTA
#undef VIO_PIN_B
	#define VIO_PIN_B	&PINA
#undef VIO_DDR_B
	#define VIO_DDR_B	&DDRA
#undef VIO_PINNR_B
	#define VIO_PINNR_B	PA0

///VPIN_C (ADC1)
#undef VIO_PORT_C
	#define VIO_PORT_C	&PORTA
#undef VIO_PIN_C
	#define VIO_PIN_C	&PINA
#undef VIO_DDR_C
	#define VIO_DDR_C	&DDRA
#undef VIO_PINNR_C
	#define VIO_PINNR_C	PA4

///VPIN_D (ADC2)
#undef VIO_PORT_D
	#define VIO_PORT_D	&PORTA
#undef VIO_PIN_D
	#define VIO_PIN_D	&PINA
#undef VIO_DDR_D
	#define VIO_DDR_D	&DDRA
#undef VIO_PINNR_D
	#define VIO_PINNR_D	PA5

///VPIN_E
#undef VIO_PORT_E
	#define VIO_PORT_E	&PORTA
#undef VIO_PIN_E
	#define VIO_PIN_E	&PINA
#undef VIO_DDR_E
	#define VIO_DDR_E	&DDRA
#undef VIO_PINNR_E
	#define VIO_PINNR_E	PA6

///VPIN_F
#undef VIO_PORT_F
	#define VIO_PORT_F	&PORTA
#undef VIO_PIN_F
	#define VIO_PIN_F	&PINA
#undef VIO_DDR_F
	#define VIO_DDR_F	&DDRA
#undef VIO_PINNR_F
	#define VIO_PINNR_F	PA7

#endif //_SLAVE_CONFIG_H
