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

#include <avr/io.h>
#include <util/twi.h> 								// Bezeichnungen f�r Statuscodes in TWSR
#include <avr/interrupt.h> 							// behandlung der Interrupts
#include <stdint.h> 								// definiert Datentyp uint8_t
#include "twislave.h" 								

//icke2063
#include <avr/eeprom.h>


//#################################### Macros
//ACK nach empfangenen Daten senden/ ACK nach gesendeten Daten erwarten
#define TWCR_ACK 	TWCR = (1<<TWEN)|(1<<TWIE)|(1<<TWINT)|(1<<TWEA)|(0<<TWSTA)|(0<<TWSTO)|(0<<TWWC);  

//NACK nach empfangenen Daten senden/ NACK nach gesendeten Daten erwarten     
#define TWCR_NACK 	TWCR = (1<<TWEN)|(1<<TWIE)|(1<<TWINT)|(0<<TWEA)|(0<<TWSTA)|(0<<TWSTO)|(0<<TWWC);

//switched to the non adressed slave mode...
#define TWCR_RESET 	TWCR = (1<<TWEN)|(1<<TWIE)|(1<<TWINT)|(1<<TWEA)|(0<<TWSTA)|(0<<TWSTO)|(0<<TWWC);  

//########################################################################################## init_twi_slave 
void init_twi_slave(uint8_t adr)
{
	TWISLAVE_DEBUG("I2C init:%x\r\n",adr);
	TWAR= (adr<<1); //Adresse setzen
	TWCR &= ~(1<<TWSTA)|(1<<TWSTO);
	TWCR|= (1<<TWEA) | (1<<TWEN)|(1<<TWIE);

	buffer_adr=0;

	slave_status = ST_ADDR_INVALID;	//Status setzen
	sei();
}

//########################################################################################## ISR (TWI_vect) 
//ISR, die bei einem Ereignis auf dem Bus ausgel�st wird. Im Register TWSR befindet sich dann 
//ein Statuscode, anhand dessen die Situation festgestellt werden kann.
ISR (TWI_vect)
{
	TWISLAVE_DEBUG("I2C:0x%x\r\n",TW_STATUS);
	uint8_t data=0;
	switch (TW_STATUS) 								// TWI-Statusregister pr�fen und n�tige Aktion bestimmen 
		{
		case TW_SR_SLA_ACK: 						// 0x60 Slave Receiver, wurde adressiert	
			TWCR_ACK; 								// n�chstes Datenbyte empfangen, ACK danach
			buffer_adr=0; 						// Bufferposition ist undefiniert
			slave_status = ST_ADDR_INVALID;
			break;

		case TW_SR_DATA_ACK: 						// 0x80 Slave Receiver,Daten empfangen
			TWISLAVE_DEBUG("WRITE\r\n");
			data=TWDR; 								// Empfangene Daten auslesen

			switch(slave_status){
			case ST_ADDR_INVALID://erster Zugriff, Bufferposition setzen

				#ifdef USE16BITADDRESS	//16Bit Modus -> set high Byte
					TWISLAVE_DEBUG("High:0x%x\r\n",data);
					buffer_adr= (data<<8);
					slave_status = ST_WAITFORLOW;		//Status setzen
					TWCR_ACK;		//Ack senden
					break;

				#else//8Bit Modus -> set low Byte (but thats all we need)
					//Kontrolle ob gewünschte Adresse im erlaubten Bereich
					if(data<(I2C_BUFFER_SIZE+EEPROM_SIZE))
						{//address valid

							buffer_adr= data; //Bufferposition wie adressiert setzen
							slave_status = ST_ADDR_VALID;
							TWCR_ACK;		//Ack senden
							break;
						}
					else
						{//address invalid
							buffer_adr=0; //Adresse auf Null setzen. Ist das sinnvoll? TO DO!
							slave_status = ST_ADDR_INVALID;
							TWCR_NACK;		//Nack senden
							break;
						}
				#endif
				break;	//sollte nie erreicht werden
		#ifdef USE16BITADDRESS
			case ST_WAITFORLOW://zweiter Zugriff, LowByte Buffer setzten
				TWISLAVE_DEBUG("Low:0x%x\r\n",data);
				buffer_adr |= data; 				//low Byte Bufferposition setzen
				//Kontrolle ob gewünschte Adresse im erlaubten bereich
				if(buffer_adr >= (I2C_BUFFER_SIZE + EEPROM_SIZE))
					{
						buffer_adr=0; //Adresse auf Null setzen. Ist das sinnvoll? TO DO!
						slave_status = ST_ADDR_INVALID;
						TWCR_NACK;		//Nack senden
						break;
					}

				slave_status = ST_ADDR_VALID;	//neuer status: gültige Addresse gesetzt
				TWCR_ACK;		//Ack senden

				break;
		#endif
			case ST_ADDR_VALID:

				TWISLAVE_DEBUG("W[0x%x]:0x%x\r\n",buffer_adr,data);

				//write buffer data
				if(buffer_adr < I2C_BUFFER_SIZE)
				{
						rxbuffer[buffer_adr] = data; //Daten in Buffer schreiben
						buffer_adr++; //Buffer-Adresse weiterzählen für nächsten Schreibzugriff
						TWCR_ACK;		//Ack senden
						break;
				}

				//write eeprom
				if(buffer_adr < (I2C_BUFFER_SIZE+EEPROM_SIZE))
				{
						eeprom_write_byte(buffer_adr-I2C_BUFFER_SIZE, data); //Daten in eeprom schreiben
						buffer_adr++; //Buffer-Adresse weiterzählen für nächsten Schreibzugriff
						TWCR_ACK;		//Ack senden
						break;
				}
				//no break -> if no above condition succeeds the default handling is used

			default://reset address
				slave_status	=	ST_ADDR_INVALID;
				buffer_adr		=	0;
				TWCR_NACK;		//Nack senden
				break;
			}
			break;

		case TW_ST_SLA_ACK: 						//
		case TW_ST_DATA_ACK: 						// 0xB8 Slave Transmitter, weitere Daten wurden angefordert
			TWISLAVE_DEBUG("GET[0x%x,0x%x]\r\n",buffer_adr,slave_status);
			if (slave_status == ST_WAITFORLOW){					// nur 1Byte Leseadresse angegeben -> passt schon ;-)
				TWISLAVE_DEBUG("8Bit\r\n");
				buffer_adr = (buffer_adr >> 8);					// shift high to low
				if(buffer_adr < (I2C_BUFFER_SIZE + EEPROM_SIZE))
				slave_status = ST_ADDR_VALID;
			}

			if (slave_status != ST_ADDR_VALID) 				// Leseadresse ungültig!
			{
				TWISLAVE_DEBUG("invalid\r\n");
				TWDR = 0;
				TWCR_NACK;
				break;
			}

			//read ram data
			if(buffer_adr < I2C_BUFFER_SIZE-1)
			{
					data = txbuffer[buffer_adr]; //Daten lesen;
					TWDR = data;
			}

			//read eeprom
			if(buffer_adr>=I2C_BUFFER_SIZE && buffer_adr<I2C_BUFFER_SIZE+EEPROM_SIZE-1)
			{
					data = eeprom_read_byte(buffer_adr-I2C_BUFFER_SIZE); //Daten aus eeprom lesen
					TWDR = data;
			}

			TWISLAVE_DEBUG("R[0x%x]:0x%x\r\n",buffer_adr,data);
			buffer_adr++; 							// bufferadresse f�r n�chstes Byte weiterz�hlen
			if(buffer_adr<(I2C_BUFFER_SIZE+EEPROM_SIZE-1)) 		// im Buffer ist mehr als ein Byte, das gesendet werden kann -> erhöhe buffer
				{
					TWCR_ACK; 						// n�chstes Byte senden, danach ACK erwarten
				}
			else
				{
					TWCR_NACK; 						// letztes Byte senden, danach NACK erwarten
				}
			break;

		case TW_ST_DATA_NACK: 						// 0xC0 Keine Daten mehr gefordert 
		case TW_SR_DATA_NACK: 						// 0x88 
		case TW_ST_LAST_DATA: 						// 0xC8  Last data byte in TWDR has been transmitted (TWEA = �0�); ACK has been received
		case TW_SR_STOP: 							// 0xA0 STOP empfangen
		default: 	
			TWCR_RESET; 							// �bertragung beenden, warten bis zur n�chsten Adressierung
			break;	
		} //end.switch (TW_STATUS)
} //end.ISR(TWI_vect)
