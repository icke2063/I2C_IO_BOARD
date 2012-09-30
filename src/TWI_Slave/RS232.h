#ifndef _RS232

#define _RS232
/*
** Here are some deinitions, used in all programs
*/
void RS232_Init (void);
int RS232_putchar (char c, FILE *stream);
//int RS232_putchar (char c);
//int RS232_putchar (unsigned char c, FILE* dummy);
void RS232_PutByte (uint8_t Byte);
uint8_t RS232_GetByte (void);
void RS232_Put_unit16 (uint16_t *Word);
void RS232_Put_unit32 (uint32_t *DWord);

void Printf512 (uint8_t *Buffer, char *Text);

#endif
