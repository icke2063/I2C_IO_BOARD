/*#################################################################################################
	Title	: TWI SLave
	Author	: Martin Junghans <jtronics@gmx.de>
	Hompage	: www.jtronics.de
	Software: AVR-GCC / Programmers Notpad 2
	License	: GNU General Public License 
	
	Aufgabe	:
	Betrieb eines AVRs mit Hardware-TWI-Schnittstelle als Slave. 
	Zu Beginn muss init_twi_slave mit der gew�nschten Slave-Adresse als Parameter aufgerufen werden. 
	Der Datenaustausch mit dem Master erfolgt �ber die Buffer rxbuffer und txbuffer, auf die von Master und Slave zugegriffen werden kann. 
	rxbuffer und txbuffer sind globale Variablen (Array aus uint8_t).
	
	Ablauf:
	Die Ansteuerung des rxbuffers, in den der Master schreiben kann, erfolgt �hnlich wie bei einem normalen I2C-EEPROM.
	Man sendet zun�chst die Bufferposition, an die man schreiben will, und dann die Daten. Die Bufferposition wird 
	automatisch hochgez�hlt, sodass man mehrere Datenbytes hintereinander schreiben kann, ohne jedesmal
	die Bufferadresse zu schreiben.
	Um den txbuffer vom Master aus zu lesen, �bertr�gt man zun�chst in einem Schreibzugriff die gew�nschte Bufferposition und
	liest dann nach einem repeated start die Daten aus. Die Bufferposition wird automatisch hochgez�hlt, sodass man mehrere
	Datenbytes hintereinander lesen kann, ohne jedesmal die Bufferposition zu schreiben.

	Abgefangene Fehlbedienung durch den Master:
	- Lesen �ber die Grenze des txbuffers hinaus
	- Schreiben �ber die Grenzen des rxbuffers hinaus
	- Angabe einer ung�ltigen Schreib/Lese-Adresse
	- Lesezuggriff, ohne vorher Leseadresse geschrieben zu haben
	
	LICENSE:
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

//#################################################################################################*/
#ifndef _TWISLAVE_H
#define _TWISLAVE_H

#include "usart.h"

#define TWISLAVE_DEBUG usart_write
//#define TWISLAVE_DEBUG(...)


#include "slave_eeprom_mapping.h"

//Bei zu alten AVR-GCC-Versionen werden die Interrupts anders genutzt, in diesem Fall Fehlermeldung
#if (__GNUC__ * 100 + __GNUC_MINOR__) < 304
	#error "This library requires AVR-GCC 3.4.5 or later, update to newer AVR-GCC compiler !"
#endif

//#################################### von Benutzer konfigurierbare Einstellung 
#ifndef I2C_BUFFER_SIZE
	#define I2C_BUFFER_SIZE 256							//Gr��e der Buffer in Byte (2..254)
#endif
#define USE16BITADDRESS		1
//#################################### Schutz vor unsinnigen Buffergr��en
#if (buffer_size > 254)
	#error Buffer zu gro� gew�hlt! Maximal 254 Bytes erlaubt.
#endif

#if (I2C_BUFFER_SIZE < 2)
	#error Buffer muss mindestens zwei Byte gro� sein!
#endif

//#################################### Globale Variablen, die vom Hauptprogramm genutzt werden 

volatile uint8_t rxbuffer[I2C_BUFFER_SIZE];				//Der Empfangsbuffer, der vom Slave ausgelesen werden kann.
volatile uint8_t txbuffer[I2C_BUFFER_SIZE];				//Der Sendebuffe, der vom Master ausgelesen werden kann.
#ifdef USE16BITADDRESS
	volatile uint16_t buffer_adr; 						//"Adressregister" f�r den Buffer
#else
	volatile uint8_t buffer_adr; 						//"Adressregister" f�r den Buffer
#endif
volatile uint16_t slave_status; 					//Status für den Slave
//########################################################################################## init_twi_slave 
void init_twi_slave(uint8_t adr);

#define	ST_ADDR_INVALID		0x00
#define	ST_WAITFORHIGH		0x01
#define	ST_ADDR_VALID		0x02


#endif //#ifdef _TWISLAVE_H
