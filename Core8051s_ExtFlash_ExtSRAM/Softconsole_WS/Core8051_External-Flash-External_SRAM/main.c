/*
 * main.c
 *
 *  Created on: 20-May-2013
 *      Author: jijeesh
 */

/*
 * apb_flash_loader.c
 *
 *  Created on: 30-Apr-2013
 *      Author: jijeesh
 */



/* Program for Kiel */



#include <8051.h>

typedef unsigned long  uint32_t;
typedef unsigned int   uint16_t;
typedef unsigned char  uint8_t;


#define	UART_BASE	  0xF000
#define	GPIO_BASE	  0xF100
#define	TIMER_BASE	  0xF200
#define SRAM_BASE     0xF300
#define FLASH_BASE    0xF400


volatile uint8_t xdata * GPIO_BASE_ADDR   = (uint8_t xdata *)GPIO_BASE;
volatile uint8_t xdata * UART0_BASE_ADDR  = (uint8_t xdata *)UART_BASE;


#define UART_TXDATA_OFFSET			0x00
#define UART_RXDATA_OFFSET			0x04
#define UART_CONTROL1_OFFSET		0x08
#define UART_CONTROL2_OFFSET		0x0C
#define UART_STATUS_OFFSET			0x10

#define UART_CONTROL2_7BITS			0x00
#define UART_CONTROL2_8BITS			0x01

#define UART_CONTROL2_NOPARITY		0x00
#define UART_CONTROL2_PARITY		0x02

#define UART_CONTROL2_EVENPARITY	0x00
#define UART_CONTROL2_ODDPARITY		0x04

#define UART_STATUS_TXREADY_MASK	0x01
#define UART_STATUS_RXREADY_MASK	0x02
#define UART_STATUS_PARITYERR_MASK	0x04
#define UART_STATUS_OVERFLOW_MASK	0x08





//unsigned char mybuf[64];

code unsigned char ascii[] = "0123456789ABCDEF" ;


void uart_config( unsigned char baudRate);

unsigned char getkey(void);
void uartWaitXmt (void );
void uartWaitRxd (void );
void uart_putchar(unsigned char c);
void printf ( unsigned char * str );

unsigned char uart_getchar(void);
void uartWaitXmt (void );
void uartWaitRxd (void );
void uart_putchar(unsigned char c);
void printf ( unsigned char * str );


#define BR_9600_5MHZ             32
#define BR_9600_6MHZ             38

void main ( void )  {


xdata unsigned char ram_buffer[128];



uint8_t  i,k ;
uint16_t addr;

addr = 0x0000;

i=0;

uart_config(BR_9600_6MHZ);

printf("\r 8051s UART Test Program \n\r")	;

while(1) {

   for ( i =0; i< 20; i++) {
      k = uart_getchar();
      ram_buffer[i] = k;
      uart_putchar(k);
      printf("\n\r");

}


printf("Captured 20 data in RAM ");
printf("\r\n");
k = uart_getchar();

printf(" Buffer COntents : ");
for ( k=0 ; k < i ; k++) {
	uart_putchar(ram_buffer[k]);

}
printf("\n\r");
 printf(" Completed ");



 while(1)
  {
 	 ;
  }
}

}

void uart_config( unsigned char baudRate)
{
    *(UART0_BASE_ADDR+UART_CONTROL1_OFFSET) =  baudRate;
    *(UART0_BASE_ADDR+UART_CONTROL2_OFFSET) = ( UART_CONTROL2_8BITS | UART_CONTROL2_NOPARITY);
}


 //Poll for transmit holding register empty
void uartWaitXmt (void ){
    unsigned char status;

    do
    {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
    } while (!(status & UART_STATUS_TXREADY_MASK));
}

//Poll for transmit holding register empty
void uartWaitRxd (void ){
    unsigned char status;

    do
    {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
    } while (!(status & UART_STATUS_RXREADY_MASK));
}





// read a single character
unsigned char uart_getchar(void)
{
    unsigned char uartRxData;

    uartWaitRxd ();
    uartRxData = *(UART0_BASE_ADDR+UART_RXDATA_OFFSET);
    return (uartRxData & 0xFF);
}


// send a single character
 void uart_putchar(unsigned char c)
{
       	uartWaitXmt();
	 	*(UART0_BASE_ADDR+UART_TXDATA_OFFSET) = c;


}

void printf ( unsigned char * str ) {

      char c;
     c = *str++;

    while (c != '\0') {
    uart_putchar( c);
    	  	c = *str++;
}
}


