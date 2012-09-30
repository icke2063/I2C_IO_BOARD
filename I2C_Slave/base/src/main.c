/*----------------------------------------------------------------------------
 Copyright:      icke2063  mailto: icke2063@gmail.com
 Author:         icke2063
 Remarks:        
 known Problems: none
 Version:        01.10.2012
 Description:    I2C(TWI) IO Board

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
----------------------------------------------------------------------------*/

#include <avr/io.h>
#include <config.h>

unsigned char hh;
unsigned char mm;
unsigned char ss;


//----------------------------------------------------------------------------
// Hier startet das Hauptprogramm
// ******************************

int main(void)
{

	DDRD = OUTD;
//	PORTD = ~OUTD;

	while(1){
		PORTD=0x60;

//
//		//2.Wechsel
//		if(PIND & (1<<i))	//PIN == 1
//		{
//			HTTP_DEBUG("2.Eins->Null(%i)\r\n",i);
//			PORTD = PORTD &= ~(1<<i);
//		}
//		else				//PIN == 0
//		{
//			HTTP_DEBUG("2.Null->Eins(%i)\r\n",i);
//			PORTD = PORTD |= (1<<i) ;
//		}
//

	}
	return(0);
}
