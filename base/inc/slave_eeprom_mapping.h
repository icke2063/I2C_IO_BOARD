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

#define EEPROM_SIZE 1024	//Größe des EEPROMS

/**
 * first block is virtual -> map SRAM into EEPROM :-)
 *
 * txbuffer[i2c_buffer_size];<- twislave.h (read)
 * rxbuffer[i2c_buffer_size];<- twislave.h (write)
 *
 * Byte 0		:	ID		(ro)
 * Byte 1		:	IO_PORT0	(rw)
 * Byte 2		:	IO_PORT1	(rw)
 * Byte 3		:	
 *
 * Byte 8+9		:	ADC 0		(ro)
 * Byte A+B		:	ADC 1		(ro)
 * Byte C+D		:	ADC 2		(ro)
 * Byte E+F		:	ADC 3		(ro)
 *
 */
#define VIRTUAL_IO_START	0x01


/**
 * second block is eeprom
 * 
 * IO_EEPROM_START:
 * 	- IO_PIN0: 	Byte 0 	 :function code
 *	 		Byte 1..x:name
 *	- ...
 *	- IO_PINX
 *
 */
#define EEPROM_IO_START	0x20

struct I2C_Slave_IO_PIN{
unsigned char	pin_type;
unsigned char	pin_name[MAX_IO_PIN_NAME_LENGTH];
};


#endif /* EEPROM_MAPPING_H_ */
