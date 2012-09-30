/*----------------------------------------------------------------------------
Copyright:      Radig Ulrich  mailto: mail@ulrichradig.de
Author:         Radig Ulrich
Remarks:        
known Problems: none
Version:        03.11.2007
Description:    Webserver Config-File

-----------------------------------------------------------------------------
------------------------------------------------------------------------------*/

#ifndef _CONFIG_H_
	#define _CONFIG_H_

	//Version
	#define SoftVers "V1.0.99"
	#define RoBueVers "Version 1.5 RoBue vom 18.02.2009"
	#define Version "1.5"


// PORTD:
#define DIG_IN_PD		0x1C 	//als Eingang markieren
#define DIG_OUT_PD		0x60 	//als Ausgang markieren

#define DIG_IMP_PD		0x00 	//als IMPULSE markieren
#define DIG_SW_PD		0x00 	//als SCHALTER markieren

#define OUTD 			((0x00 | DIG_OUT_PD) & ~DIG_IN_PD)

#endif //_CONFIG_H
