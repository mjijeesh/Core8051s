/***************************************************************************//**
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * CoreWatchdog driver public API.
 *
 * SVN $Revision: 404 $
 * SVN $Date: 2008-06-05 11:32:39 +0100 (Thu, 05 Jun 2008) $
 ******************************************************************************/
#ifndef __CORE_WATCHDOG_H
#define __CORE_WATCHDOG_H	1

#include "cpu_types.h"

/******************************** DEFINES *************************************/

/*******************************************************************************
 * Scale values.
 */
#define WD_PRESCALER_DIV_2			0 /**< Divide clock by 2    */
#define WD_PRESCALER_DIV_4			1 /**< Divide clock by 4    */
#define WD_PRESCALER_DIV_8			2 /**< Divide clock by 8    */
#define WD_PRESCALER_DIV_16			3 /**< Divide clock by 16   */
#define WD_PRESCALER_DIV_32			4 /**< Divide clock by 32   */
#define WD_PRESCALER_DIV_64			5 /**< Divide clock by 64   */
#define WD_PRESCALER_DIV_128		6 /**< Divide clock by 128  */
#define WD_PRESCALER_DIV_256		7 /**< Divide clock by 256  */
#define WD_PRESCALER_DIV_512		8 /**< Divide clock by 512  */
#define WD_PRESCALER_DIV_1024		9 /**< Divide clock by 1024 */

/***************************************************************************//**
 * This structure is used to identify the various CoreWatchdog hardware
 * instances in your system. Your application software should declare one 
 * instance of this structure for each instance of CoreWatchdog in your system.
 * The function WD_init() initializes this structure. A pointer to an 
 * initialized instance of the structure should be passed as the first parameter
 * to the CoreWatchdog driver functions, to identify which CoreWatchdog hardware
 * instance should perform the requested operation. 
 */
typedef struct {
	addr_t base_address;
} wd_instance_t;

/***************************************************************************//**
 * The function WD_init() initializes the watchdog with the configuration passed
 * as parameter. It configures the prescaler and load value that define the
 * delay before which the watchdog must be reloaded to avoid a system reset.
 * It should be called before any other CoreWatchdog driver functions.
 *
 * @param instance	Pointer to a wd_instance_t structure holding all relevant
 *                  data associated with the target CoreWatchdog hardware 
 *                  instance. This pointer will be used to identify the target
 *                  CoreWatchdog hardware instance in subsequent calls to the
 *                  CoreWatchdog functions.
 *
 * @param base		Base address in the processor's memory map of the registers
 *                  of the CoreWatchdog instance being initialized.
 *
 * @param value		This is the load value of the watchdog's down counter timer.
 *                  The watchdog's down counter will start decrementing from
 *                  this value once the function WD_enable() is called.
 *                  The watchdog's down counter timer will be loaded with this
 *                  value every time the WD_reload() function will be called.
 *
 * @param scale		The scale parameter specifies the divider that will be used
 *                  to divide the system clock. It specifies the number of 
 *                  system clock cycles required between each decrementing of 
 *                  the watchdog's down counter value. This parameter is 
 *                  selected using one of the prescaler constants 
 *                  WD_PRESCALER_DIV_<n>, where <n> is the clock divider value.
 */
void
WD_init
(
	wd_instance_t *instance,
	addr_t base,
	uint32_t value,
	uint32_t scale
);

/***************************************************************************//**
 * The function WD_enable() allows the watchdog decrementing its down counter
 * timer.
 *
 * @param instance	Pointer to a wd_instance_t structure holding all relevant
 *                  data associated with the target timer hardware instance.
 *                  This pointer is used to identify the target CoreWatchdog
 *                  hardware instance.
 */
void
WD_enable
(
	wd_instance_t *instance
);

/***************************************************************************//**
 * The function WD_disable() stops the watchdog decrementing its down counter
 * timer.
 *
 * @param instance	Pointer to a wd_instance_t structure holding all relevant
 *                  data associated with the target timer hardware instance.
 *                  This pointer is used to identify the target CoreWatchdog
 *                  hardware instance.
 */
void
WD_disable
(
	wd_instance_t *instance
);

/***************************************************************************//**
 * The WD_reload() function causes the watchdog to reload its down counter timer
 * with the load value configured through the call to WD_init(). This function 
 * must be called regularly to avoid a system reset.
 *
 * @param instance	Pointer to a wd_instance_t structure holding all relevant
 *                  data associated with the target timer hardware instance.
 *                  This pointer is used to identify the target CoreWatchdog
 *                  hardware instance.
 */
void
WD_reload
(
	wd_instance_t *instance
);

/***************************************************************************//**
 * The function WD_current_value() returns the current value of the watchdog's
 * down counter timer.
 *
 * @param instance	Pointer to a wd_instance_t structure holding all relevant
 *                  data associated with the target timer hardware instance.
 *                  This pointer is used to identify the target CoreWatchdog
 *                  hardware instance.
 *
 * @return			This function returns the 32-bit watchdog down counter timer
 *                  value.
 */
uint32_t
WD_current_value
(
	wd_instance_t *instance
);

#endif	/* __CORE_WATCHDOG_H */
