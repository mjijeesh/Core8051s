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
volatile uint8_t xdata * FLASH_BASE_ADDR  = (uint8_t xdata *)FLASH_BASE;
volatile uint8_t xdata * UART0_BASE_ADDR  = (uint8_t xdata *)UART_BASE;
volatile uint8_t xdata * SRAM_BASE_ADDR   = (uint8_t xdata *)SRAM_BASE;

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


#define FLASH_CTRL_OFFSET			0x00
#define FLASH_STS_OFFSET		    0x04
#define FLASH_ADDR1_OFFSET			0x08
#define FLASH_ADDR2_OFFSET			0x0C
#define FLASH_DATA_OFFSET			0x10

#define FLASH_CTRL_PROGRAM			0x80
#define FLASH_CTRL_ERASE			0x40

//#define FLASH_STATUS_BUSY   		0x80
#define FLASH_STATUS_BITS  		    0x06

#define FLASH_STS_BUSY_MASK         0x80

#define FLASH_PAGE_SIZE             128

#define BUFFER_SIZE                 32


//unsigned char mybuf[64];

code unsigned char ascii[] = "0123456789ABCDEF" ;


void uart_config( unsigned char baudRate);

unsigned char getkey(void);
void uartWaitXmt (void );
void uartWaitRxd (void );
void uart_putchar(unsigned char c);
void printf ( unsigned char * str );

void FlashErasePage(uint16_t  pageAddr );
void FlashProgramPage ( unsigned char * buffer  , unsigned int addr ,unsigned char size);


void GetRecord ( unsigned char * buffer , unsigned  char size);
static unsigned char Load2Hex(void);
static unsigned int Load4Hex(void);
unsigned char Download(void);
void FlashBusyCheck(void);

unsigned char uart_getchar(void);
void uartWaitXmt (void );
void uartWaitRxd (void );
void uart_putchar(unsigned char c);
void printf ( unsigned char * str );

void FlashErasePage(uint16_t  pageAddr );
//void FlashProgramPage ( unsigned char * buffer  , unsigned int addr);


//xdata  at (0xF100) unsigned char UART_BASE

xdata  at SRAM_BASE  unsigned char xdata_buffer[BUFFER_SIZE];



//unsigned char xdata xdata_buffer[BUFFER_SIZE] _at_ SRAM_BASE;
static unsigned char checkSum;

#define base                 0x1000


code  at base  FLASH[0x400];
//code  char FLASH[0x400] _at_ (base) ;

#define BR_9600_5MHZ             32
#define BR_9600_6MHZ             38

void main ( void )  {

//unsigned char ram_buffer[32];
	unsigned char size;


uint8_t  i,k ;
uint16_t addr;

addr = 0x0000;

i=0;

uart_config(BR_9600_6MHZ);

printf("\r 8051s UART Test Program \n\r")	;

// erase the flash memory

for ( k=0 ; k < 32; k++) {
   FlashErasePage(addr);
   addr = addr + 128;
 }

 addr = 0x0000;
size = 0;


while(1) {
   // *(GPIO_BASE_ADDR) = i;
	 //for ( i =0; i<FLASH_PAGE_SIZE; i++) {
   for ( i =0; i< 10; i++) {
      k = uart_getchar();
      xdata_buffer[i] = k;
      uart_putchar(k);
      printf("\n\r");
      size++;
}
//	i++;

printf("Captured 128 data in RAM ");
k = uart_getchar();



for ( k=0 ; k < 10 ; k++) {
   FlashProgramPage (xdata_buffer,addr,size);
   printf(" Page Programmed ");
   printf("\r \n");
   addr = addr + 128;
}

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


/* Flash Rotines */

void FlashErasePage(uint16_t  pageAddr )
{
	 unsigned char  status;

	    // make sure that the flash is not busy
	 do {
	 		  status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);

	 	  } while (!(status & FLASH_STS_BUSY_MASK));

	 *(FLASH_BASE_ADDR+FLASH_ADDR1_OFFSET) = pageAddr;
	 *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET) = pageAddr >> 8;  // uper addr

	// *(FLASH_BASE_ADDR+FLASH_DATA_OFFSET) = 0x00; // dummy write for flash

	 *(FLASH_BASE_ADDR+FLASH_CTRL_OFFSET)=  FLASH_CTRL_ERASE; // erase command

	  do {
		  status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);

	  } while (!(status & FLASH_STS_BUSY_MASK));


	}

/// flash program a page


void FlashProgramPage ( unsigned char * buffer  , unsigned int addr , unsigned char size) {

	unsigned int page_addr ;
	unsigned char i,status;
	page_addr = addr;

	     FlashBusyCheck();  // check the last programming operation is complete or not;

		 *(FLASH_BASE_ADDR + FLASH_ADDR1_OFFSET) = page_addr;
		 *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET)   = page_addr >> 8;  // uper addr

		 status = *(FLASH_BASE_ADDR+FLASH_DATA_OFFSET) ; // read a byte from the page buffer to load it properly
		 FlashBusyCheck();

	for ( i = 0; i < size ; i++) {
		*(FLASH_BASE_ADDR+FLASH_ADDR1_OFFSET)= page_addr;
		*(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET)= page_addr >> 8;
		*(FLASH_BASE_ADDR+FLASH_DATA_OFFSET)=  buffer[i];
		 FlashBusyCheck();
	     page_addr++;
	 }

	*(FLASH_BASE_ADDR+FLASH_CTRL_OFFSET)=  FLASH_CTRL_PROGRAM;
   // check the status before doing any action

	FlashBusyCheck();

}


void FlashBusyCheck(void) {
unsigned char status;

  do {
		 status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);

	 } while (!(status & FLASH_STS_BUSY_MASK));

}

