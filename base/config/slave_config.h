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

#include <avr/iom8.h>
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

///PIN _0
#undef VIO_PORT_0
	#define VIO_PORT_0	&PORTB
#undef VIO_PIN_0
	#define VIO_PIN_0	&PINB
#undef VIO_DDR_0
	#define VIO_DDR_0	&DDRB
#undef VIO_PINNR_0
	#define VIO_PINNR_0	PD5

///PIN _1
#undef VIO_PORT_1
	#define VIO_PORT_1	&PORTD
#undef VIO_PIN_1
	#define VIO_PIN_1	&PIND
#undef VIO_DDR_1
	#define VIO_DDR_1	&DDRD
#undef VIO_PINNR_1
	#define VIO_PINNR_1	PD7

///PIN _2
#undef VIO_PORT_2
	#define VIO_PORT_2	&PORTB
#undef VIO_PIN_2
	#define VIO_PIN_2	&PINB
#undef VIO_DDR_2
	#define VIO_DDR_2	&DDRB
#undef VIO_PINNR_2
	#define VIO_PINNR_2	PB4

///PIN _3
#undef VIO_PORT_3
	#define VIO_PORT_3	&PORTD
#undef VIO_PIN_3
	#define VIO_PIN_3	&PIND
#undef VIO_DDR_3
	#define VIO_DDR_3	&DDRD
#undef VIO_PINNR_3
	#define VIO_PINNR_3	PD0

///PIN _4
#undef VIO_PORT_4
	#define VIO_PORT_4	&PORTB
#undef VIO_PIN_4
	#define VIO_PIN_4	&PINB
#undef VIO_DDR_4
	#define VIO_DDR_4	&DDRB
#undef VIO_PINNR_4
	#define VIO_PINNR_4	PD3

///PIN _5
#undef VIO_PORT_5
	#define VIO_PORT_5	&PORTD
#undef VIO_PIN_5
	#define VIO_PIN_5	&PIND
#undef VIO_DDR_5
	#define VIO_DDR_5	&DDRD
#undef VIO_PINNR_5
	#define VIO_PINNR_5	PD1

///PIN _6
#undef VIO_PORT_6
	#define VIO_PORT_6	&PORTB
#undef VIO_PIN_6
	#define VIO_PIN_6	&PINB
#undef VIO_DDR_6
	#define VIO_DDR_6	&DDRB
#undef VIO_PINNR_6
	#define VIO_PINNR_6	PB2

///PIN _7
#undef VIO_PORT_7
	#define VIO_PORT_7	&PORTD
#undef VIO_PIN_7
	#define VIO_PIN_7	&PIND
#undef VIO_DDR_7
	#define VIO_DDR_7	&DDRD
#undef VIO_PINNR_7
	#define VIO_PINNR_7	PD2

///PIN _8
#undef VIO_PORT_8
	#define VIO_PORT_8	&PORTB
#undef VIO_PIN_8
	#define VIO_PIN_8	&PINB
#undef VIO_DDR_8
	#define VIO_DDR_8	&DDRB
#undef VIO_PINNR_8
	#define VIO_PINNR_8	PB1

///PIN _9
#undef VIO_PORT_9
	#define VIO_PORT_9	&PORTD
#undef VIO_PIN_9
	#define VIO_PIN_9	&PIND
#undef VIO_DDR_9
	#define VIO_DDR_9	&DDRD
#undef VIO_PINNR_9
	#define VIO_PINNR_9	PD3

///PIN _A
#undef VIO_PORT_A
	#define VIO_PORT_A	&PORTD
#undef VIO_PIN_A
	#define VIO_PIN_A	&PIND
#undef VIO_DDR_A
	#define VIO_DDR_A	&DDRD
#undef VIO_PINNR_A
	#define VIO_PINNR_A	PD5

///PIN _B
#undef VIO_PORT_B
	#define VIO_PORT_B	&PORTD
#undef VIO_PIN_B
	#define VIO_PIN_B	&PIND
#undef VIO_DDR_B
	#define VIO_DDR_B	&DDRD
#undef VIO_PINNR_B
	#define VIO_PINNR_B	PD6

///PIN _C
#undef VIO_PORT_C
	#define VIO_PORT_C	&PORTC
#undef VIO_PIN_C
	#define VIO_PIN_C	&PINC
#undef VIO_DDR_C
	#define VIO_DDR_C	&DDRC
#undef VIO_PINNR_C
	#define VIO_PINNR_C	PC0

///PIN _D
#undef VIO_PORT_D
	#define VIO_PORT_D	&PORTC
#undef VIO_PIN_D
	#define VIO_PIN_D	&PINC
#undef VIO_DDR_D
	#define VIO_DDR_D	&DDRC
#undef VIO_PINNR_D
	#define VIO_PINNR_D	PC1

///PIN _E
#undef VIO_PORT_E
	#define VIO_PORT_E	&PORTC
#undef VIO_PIN_E
	#define VIO_PIN_E	&PINC
#undef VIO_DDR_E
	#define VIO_DDR_E	&DDRC
#undef VIO_PINNR_E
	#define VIO_PINNR_E	PC2

///PIN _F
#undef VIO_PORT_F
	#define VIO_PORT_F	&PORTC
#undef VIO_PIN_F
	#define VIO_PIN_F	&PINC
#undef VIO_DDR_F
	#define VIO_DDR_F	&DDRC
#undef VIO_PINNR_F
	#define VIO_PINNR_F	PC3

#endif //_SLAVE_CONFIG_H
