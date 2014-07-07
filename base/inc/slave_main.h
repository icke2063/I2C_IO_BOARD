/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	main header file

 Dieses Programm ist freie Software. Sie können es unter den Bedingungen der
 GNU General Public License, wie von der Free Software Foundation veröffentlicht,
 weitergeben und/oder modifizieren, entweder gemäß Version 2 der Lizenz oder
 (nach Ihrer Option) jeder späteren Version.

 Die Veröffentlichung dieses Programms erfolgt in der Hoffnung,
 daß es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE,
 sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT
 FÜR EINEN BESTIMMTEN ZWECK. Details finden Sie in der GNU General Public License.

 Sie sollten eine Kopie der GNU General Public License zusammen mit diesem
 Programm erhalten haben.
 Falls nicht, schreiben Sie an die Free Software Foundation,
 Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
------------------------------------------------------------------------------*/
#ifndef SLAVE_MAIN_H_
#define SLAVE_MAIN_H_

#include "usart.h"
/**
 * debug macro
 * insert write function to get it work
 */
//#define I2C_MAIN_DEBUG	usart_write
#define I2C_MAIN_DEBUG(...)

#define I2C_MAIN_INFO	usart_write
//define I2C_MAIN_INFO(...)

/**
 * init board
 * - init used virtual IO pins
 * - init txbuffer
 * - init i2c bus
 */
void init(void);

/**
 * update txbuffer
 */
void update_tx(void);

/**
 * print address information for all configured virtual IO pins
 */
void printIOsstruct(void);

/**
 * handle virtual IO pins by usage of information from I2C buffers
 */
void handle_vio(void);
/**
 * read function codes from eeprom and write it to
 * io_pins[]
 */
void getFuncCode(void);

#endif /* SLAVE_MAIN_H_ */
