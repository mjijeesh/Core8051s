/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * SVN $Revision: 179 $
 * SVN $Date: 2008-03-11 15:26:16 +0000 (Tue, 11 Mar 2008) $
 */
#ifndef __CORE_INTERRUPT_REGISTERS_H
#define __CORE_INTERRUPT_REGISTERS_H	1

/*------------------------------------------------------------------------------
 * FIQSoftInt register details
 */
#define FIQSoftInt_REG_OFFSET	0x00

/*
 * FIQSoftInt bits.
 */
#define FIQSoftInt_OFFSET   0x00
#define FIQSoftInt_MASK     0xFF
#define FIQSoftInt_SHIFT    0

/*------------------------------------------------------------------------------
 * FIQSoftIntClear register details
 */
#define FIQSoftIntClear_REG_OFFSET	0x04

/*
 * FIQSoftIntClear bits.
 */
#define FIQSoftIntClear_OFFSET   0x04
#define FIQSoftIntClear_MASK     0xFF
#define FIQSoftIntClear_SHIFT    0

/*------------------------------------------------------------------------------
 * FIQEnable register details
 */
#define FIQEnable_REG_OFFSET	0x08

/*
 * FIQEnable bits.
 */
#define FIQEnable_OFFSET   0x08
#define FIQEnable_MASK     0xFF
#define FIQEnable_SHIFT    0

/*------------------------------------------------------------------------------
 * FIQEnableClear register details
 */
#define FIQEnableClear_REG_OFFSET	0x0C

/*
 * FIQEnableClear bits.
 */
#define FIQEnableClear_OFFSET   0x0C
#define FIQEnableClear_MASK     0xFF
#define FIQEnableClear_SHIFT    0

/*------------------------------------------------------------------------------
 * FIQRawStatus register details
 */
#define FIQRawStatus_REG_OFFSET	0x10

/*
 * FIQRawStatus bits.
 */
#define FIQRawStatus_OFFSET   0x10
#define FIQRawStatus_MASK     0xFF
#define FIQRawStatus_SHIFT    0

/*------------------------------------------------------------------------------
 * FIQStatus register details
 */
#define FIQStatus_REG_OFFSET	0x14

/*
 * FIQStatus bits.
 */
#define FIQStatus_OFFSET   0x14
#define FIQStatus_MASK     0xFF
#define FIQStatus_SHIFT    0

/*------------------------------------------------------------------------------
 * IRQSoftInt register details
 */
#define IRQSoftInt_REG_OFFSET	0x18

/*
 * IRQSoftInt bits.
 */
#define IRQSoftInt_OFFSET   0x18
#define IRQSoftInt_MASK     0xFFFFFFFF
#define IRQSoftInt_SHIFT    0

/*------------------------------------------------------------------------------
 * IRQSoftIntClear register details
 */
#define IRQSoftIntClear_REG_OFFSET	0x1C

/*
 * IRQSoftIntClear bits.
 */
#define IRQSoftIntClear_OFFSET   0x1C
#define IRQSoftIntClear_MASK     0xFFFFFFFF
#define IRQSoftIntClear_SHIFT    0

/*------------------------------------------------------------------------------
 * IRQEnable register details
 */
#define IRQEnable_REG_OFFSET	0x20

/*
 * IRQEnable bits.
 */
#define IRQEnable_OFFSET   0x20
#define IRQEnable_MASK     0xFFFFFFFF
#define IRQEnable_SHIFT    0

/*------------------------------------------------------------------------------
 * IRQEnableClear register details
 */
#define IRQEnableClear_REG_OFFSET	0x24

/*
 * IRQEnableClear bits.
 */
#define IRQEnableClear_OFFSET   0x24
#define IRQEnableClear_MASK     0xFFFFFFFF
#define IRQEnableClear_SHIFT    0

/*------------------------------------------------------------------------------
 * IRQRawStatus register details
 */
#define IRQRawStatus_REG_OFFSET	0x28

/*
 * IRQRawStatus bits.
 */
#define IRQRawStatus_OFFSET   0x28
#define IRQRawStatus_MASK     0xFFFFFFFF
#define IRQRawStatus_SHIFT    0

/*------------------------------------------------------------------------------
 * IRQStatus register details
 */
#define IRQStatus_REG_OFFSET	0x2C

/*
 * IRQStatus bits.
 */
#define IRQStatus_OFFSET   0x2C
#define IRQStatus_MASK     0xFFFFFFFF
#define IRQStatus_SHIFT    0

#endif	/* __CORE_INTERRUPT_REGISTERS_H */
