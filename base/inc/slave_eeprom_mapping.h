/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	eeprom mapping file

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
#ifndef SLAVE_EEPROM_MAPPING_H_
#define SLAVE_EEPROM_MAPPING_H_

#include "slave_config.h"

#define IOBOARD_MAX_IO_PINS	16
/**
 * first block is virtual -> map SRAM into EEPROM :-)
 *
 * txbuffer[i2c_buffer_size];<- twislave.h (read)
 * rxbuffer[i2c_buffer_size];<- twislave.h (write)
 *
 * Byte 0		:	ID		(ro)
 * Byte 1		:	ID		(ro)
 * Byte 2		:
 * Byte 3		:
 *
 * Byte [4..F]	:	SW Version					#VERSION_START
 */

 /**
 * Byte 16		:	VIO_PORT_COUNT	(ro)		#VIRTUAL_IO_COUNT
 * Byte 17		:	VIO_PORT_COUNT	(ro)
 *
 * Byte 20		:	VIO_PORT0	(rw)			#VIRTUAL_IO_START
 * Byte 21		:	VIO_MASK0	(ro)
 * Byte 22		:	VIO_PORT1	(rw)
 * Byte 23		:	VIO_MASK1	(ro)


 * Byte [32;35]		:	PORT0 IO0 data		(rw)	#VIRTUAL_DATA_START
 * Byte [36;39]		:	PORT0 IO0 data		(rw)
 *	...
 * Byte [60;63]		:	PORT0 IO7 data		(rw)
 */

#define I2C_BUFFER_SIZE		256
#define VERSION_START		0x04
#define VERSION_LENGTH		0x0B

#define VIRTUAL_IO_COUNT	0x10
#define VIRTUAL_IO_START	0x14

#define VIRTUAL_DATA_START	0x20

/**
 * second block is eeprom
 * 
 * Byte 0		:	I2C ADDRESS		(ro)
 *
 * Byte [32;36]		:	PORT0 IO0 data		(rw)			#EEPROM_DATA_START
 *	...
 * Byte [59;63]		:	PORT0 IO7 data		(rw)
 *
 * Byte 0x70		:	Function Codes
 *
 * Byte 0x100			:	PORT0 IO0 FUNCTION Code (rw)	#EEPROM_NAME_START
 * Byte [0x101;0x10F]	:	PORT0 IO0 Name (rw)
 *
 * Byte 0x170			:	PORT0 IO7 FUNCTION Code (rw)
 * Byte [0x171;0x17F]	:	PORT0 IO7 Name (rw)

 */
#define EEPROM_SIZE 			1024	//Größe des EEPROMS
#define EEPROM_DATA_START		0x20
#define EEPROM_FUNC_START		0x70

#define EEPROM_NAME_START		0x100
#define IO_BOARD_MAX_IO_PIN_NAME_LENGTH	16

#endif /* EEPROM_MAPPING_H_ */
