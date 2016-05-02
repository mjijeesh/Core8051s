/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * Core Interrupt Controller driver public API.
 * 
 * SVN $Revision: 383 $
 * SVN $Date: 2008-05-30 14:53:07 +0100 (Fri, 30 May 2008) $
 */
#ifndef CORE_IRQ_CTRL_H_
#define CORE_IRQ_CTRL_H_

#include "cpu_types.h"

/***************************************************************************//**
 * interrupt_handler_t
 *
 * The type interrupt_handler_t is used to declare a pointer to a function which
 * does not take any parameters and does not return a value. It is used as
 * argument to the CIC_set_irq_handler() function to provide a pointer to an
 * interrupt service routine function.
 */
typedef void (*interrupt_handler_t)(void);

/***************************************************************************//**
 * CIC_init() initialise the Core Interrupt Controller instance data structures.
 *
 * @param address		This is the base address of the CoreInterrupt hardware
 *						instance in the processor’s memory space.
 *
 */
void
CIC_init
(
    addr_t address
);

/***************************************************************************//**
 * The CIC_set_irq_handler() function is used to register the interrupt service
 * routines for the peripherals connected to the "irqSource" inputs of the
 * interrupt controller. It tells the interrupt controller driver which routine
 * to call when "irqSource" signals are asserted.
 *
 * @param irq_number	This parameter identifies the irqSource signal connected
 *						to the interrupt source for which the function call is
 *						registering an interrupt service routine.
 *						For example: 0 for enabling irqSource0, 5 for irqSource5.
 * @param handler		Function pointer to the routine to call when the
 *						irqSource signal identified by irq_number is asserted.
 */
void
CIC_set_irq_handler
(
	uint8_t irq_number, 
	interrupt_handler_t handler
);

/***************************************************************************//**
 * The CIC_irq_handler() routine should be called as a result of Core Interrupt
 * Controller asserting its IRQ signal. It will detect the source of the
 * interrupt and call the relevant interrupt service routine that was registered
 * through a previous call to CIC_set_irq_handler().
 */
void
CIC_irq_handler(
    void
);

/***************************************************************************//**
 * CIC_enable_irq() enables an interrupt source to cause the IRQ signal to be
 * asserted.
 * 
 * @param irq_number	Identifies the irqSource signal that is enabled.
 * 						e.g. 0 for enabling irqSource0, 5 for irqSource5.
 */
void
CIC_enable_irq
(
    uint8_t irq_number
);

/***************************************************************************//**
 * CIC_disable_irq() disables an irqSource from causing an IRQ assertion.
 * 
 * @param irq_number	Identifies the irqSource signal that is disabled.
 * 						e.g. 0 for disabling irqSource0, 5 for irqSource5.
 */
void
CIC_disable_irq
(
    uint8_t irq_number
);

/***************************************************************************//**
 * CIC_get_irq_status() returns the irqSource status.
 *
 * @return				A 32 bit value indicating which IRQ source are active.
 *						Each bit in the return value represents an IRQ source.
 */
uint32_t
CIC_get_irq_status(
    void
);

#endif /*CORE_IRQ_CTRL_H_*/
