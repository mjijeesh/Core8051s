/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * SVN $Revision: 185 $
 * SVN $Date: 2008-03-11 15:33:49 +0000 (Tue, 11 Mar 2008) $
 */

#ifndef __CORE_UART_APB_REGISTERS
#define __CORE_UART_APB_REGISTERS	1

/*------------------------------------------------------------------------------
 * TxData register details
 */
#define TXDATA_REG_OFFSET	0x0

/*
 * TxData bits.
 */
#define TXDATA_OFFSET   0x0
#define TXDATA_MASK     0xFF
#define TXDATA_SHIFT    0

/*------------------------------------------------------------------------------
 * RxData register details
 */
#define RXDATA_REG_OFFSET	0x4

/*
 * RxData bits.
 */
#define RXDATA_OFFSET   0x4
#define RXDATA_MASK     0xFF
#define RXDATA_SHIFT    0

/*------------------------------------------------------------------------------
 * ControReg1 register details
 */
#define CTRL1_REG_OFFSET	0x8

/*
 * Baud rate
 */
#define CTRL1_BAUDRATE_OFFSET   0x8
#define CTRL1_BAUDRATE_MASK     0xFF
#define CTRL1_BAUDRATE_SHIFT    0

/*------------------------------------------------------------------------------
 * ControReg2 register details
 */
#define CTRL2_REG_OFFSET	0xC

/*
 * Bit length
 */
#define CTRL2_BIT_LENGTH_OFFSET   0xC
#define CTRL2_BIT_LENGTH_MASK     0x01
#define CTRL2_BIT_LENGTH_SHIFT    0

/*
 * Parity enable.
 */
#define CTRL2_PARITY_EN_OFFSET   0xC
#define CTRL2_PARITY_EN_MASK     0x02
#define CTRL2_PARITY_EN_SHIFT    1

/*
 * Odd/even parity selection.
 */
#define CTRL2_ODD_EVEN_OFFSET   0xc
#define CTRL2_ODD_EVEN_MASK     0x04
#define CTRL2_ODD_EVEN_SHIFT    2

/*------------------------------------------------------------------------------
 * StatusReg register details
 */
#define StatusReg_REG_OFFSET	0x10

#define STATUS_REG_OFFSET	0x10

/*
 * Trnasmit ready.
 */
#define STATUS_TXRDY_OFFSET   0x10
#define STATUS_TXRDY_MASK     0x01
#define STATUS_TXRDY_SHIFT    0

/*
 * Receive full.
 */
#define STATUS_RXFULL_OFFSET   0x10
#define STATUS_RXFULL_MASK     0x02
#define STATUS_RXFULL_SHIFT    1

/*
 * Parity error.
 */
#define STATUS_PARITYERR_OFFSET   0x10
#define STATUS_PARITYERR_MASK     0x04
#define STATUS_PARITYERR_SHIFT    2

/*
 * Overflow.
 */
#define STATUS_OVERFLOW_OFFSET   0x10
#define STATUS_OVERFLOW_MASK     0x08
#define STATUS_OVERFLOW_SHIFT    3

#endif	/* __CORE_UART_APB_REGISTERS */
