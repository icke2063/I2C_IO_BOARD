/*----------------------------------------------------------------------------
 Copyright:      
 Author:         
 Remarks:        
 known Problems: 
 Version:        
 Description:    S0-Bus Ansteuerung

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
#ifndef _S0_H
	#define _S0_H
    #include <avr/interrupt.h>

	//#include "usart.h"

	//#define S0_DEBUG	usart_write		//mit Debugausgabe
	#define S0_DEBUG(...)

volatile uint32_t CountInt[2];

	//Prototypen
	void S0_Start (uint8_t addr);
	void S0_Stop (uint8_t addr);
	void read_eeprom (uint8_t addr);
	void save_eeprom (uint8_t addr);
	uint32_t get_S0_data (uint8_t addr);

 
#endif //_S0_H
