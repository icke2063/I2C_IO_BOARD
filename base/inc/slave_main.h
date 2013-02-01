/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	main header file

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
#ifndef SLAVE_MAIN_H_
#define SLAVE_MAIN_H_

#include "slave_config.h"

/**
 * @brief init AVR
 * - init i2c bus
 */
void init(void);

#endif /* SLAVE_MAIN_H_ */
