#ifndef Top_Level_HW_PLATFORM_H_
#define Top_Level_HW_PLATFORM_H_
/*****************************************************************************
*
*Created by Actel SmartDesign  Fri Mar 04 14:49:26 2011
*
*Memory map specification for peripherals in Top_Level
*/

/*-----------------------------------------------------------------------------
* CORE8051S_0 subsystem memory map
* Master(s) for this subsystem: CORE8051S_0 
*---------------------------------------------------------------------------*/


#define COREUARTAPB_0                   0x00000000U
#define COREGPIO_0                      0x00000100U
#define CORETIMER_0                     0x00000200U
#define COREWATCHDOG_0                  0x00000300U
#define COREINTERRUPT_0                 0x00000500U




//Interrupt numbers
#define UART0_RXRDY_IRQ_NB       0
#define UART0_TXRDY_IRQ_NB      1
#define TIMER0_IRQ_NB            2


#endif /* Top_Level_HW_PLATFORM_H_*/
