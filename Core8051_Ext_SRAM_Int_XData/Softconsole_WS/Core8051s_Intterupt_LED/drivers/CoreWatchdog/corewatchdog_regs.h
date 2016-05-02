/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * SVN $Revision: 309 $
 * SVN $Date: 2008-05-12 15:04:35 +0100 (Mon, 12 May 2008) $
 */
#ifndef __CORE_WATCHDOG_REGISTERS_H
#define __CORE_WATCHDOG_REGISTERS_H		1


/***************************************************************************//**
*									REGISTERS
*/
#define WDOGLOAD_REG_OFFSET		0x00	/* Load value for counter */
#define WDOGVALUE_REG_OFFSET		0x04	/* Current counter value */
#define WDOGCONTROL_REG_OFFSET	0x08	/* Control register */
#define WDOGREFRESH_REG_OFFSET	0x0C	/* Refresh register */

#define WDOGCONTROL_WATCHDOG_ENABLE_OFFSET	0x08
#define WDOGCONTROL_WATCHDOG_ENABLE_SHIFT		4
#define WDOGCONTROL_WATCHDOG_ENABLE_MASK		\
			( 1 << WDOGCONTROL_WATCHDOG_ENABLE_SHIFT )

#define WDOGCONTROL_PRESCALE_OFFSET				0x08
#define WDOGCONTROL_PRESCALE_SHIFT				0
#define WDOGCONTROL_PRESCALE_MASK				\
			( 0xf << WDOGCONTROL_PRESCALE_SHIFT )

#endif /* __CORE_WATCHDOG_REGISTERS_H */
