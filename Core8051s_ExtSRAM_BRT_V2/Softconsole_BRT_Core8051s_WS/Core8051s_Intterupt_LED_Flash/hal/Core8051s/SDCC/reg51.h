/*--------------------------------------------------------------------------
reg51.h

Header file for Actel Core8051s microcontroller.
Copyright (c) Actel Corporation 2006.
All rights reserved.

 SVN $Revision: 638 $
 SVN $Date: 2009-02-11 15:02:08 +0000 (Wed, 11 Feb 2009) $
--------------------------------------------------------------------------*/

#ifndef __REG51_H__
#define __REG51_H__

/*  BYTE Registers  */
sfr SP   = 0x81;
sfr DPL  = 0x82;
sfr DPH  = 0x83;
sfr DPL1 = 0x84;
sfr DPH1 = 0x85;
sfr DPS  = 0x92;
sfr XWB1 = 0x9A;
sfr XWB2 = 0x9B;
sfr XWB3 = 0x9C;
sfr XRB1 = 0x9D;
sfr XRB2 = 0x9E;
sfr XRB3 = 0x9F;
sfr PSW  = 0xD0;
sfr ACC  = 0xE0;
sfr B    = 0xF0;

/*  BIT Register  */
/*  PSW   */
sbit CY   = 0xD7;
sbit AC   = 0xD6;
sbit F0   = 0xD5;
sbit RS1  = 0xD4;
sbit RS0  = 0xD3;
sbit OV   = 0xD2;
sbit P    = 0xD0;

#endif
