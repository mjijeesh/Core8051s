/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * Core Interrupt Controller.
 * 
 * SVN $Revision: 909 $
 * SVN $Date: 2009-05-19 12:13:43 +0100 (Tue, 19 May 2009) $
 */
#include "core_irq_ctrl.h"
#include "coreinterrupt_regs.h"
#include "hal.h"
#include "hal_assert.h"

/***************************************************************************//**
 * Defines
 */
#define CLEAR_ALL_BITS      0xFFFFFFFFUL
#define NO_HANDLER	0
#define UNASSIGNED_BASE_ADDRESS		0

#define CIC_NB_IRQ_SOURCES	32

/***************************************************************************//**
 * Base address of the CoreInterrupt instance. The value of the base address is
 * set in the call to CIC_init().
 */
static addr_t g_cic_base_addr = UNASSIGNED_BASE_ADDRESS;

/***************************************************************************//**
 * Table holding the address of the interrupt service routines associated with
 * each CoreInterrupt IRQ input. The content of this table is set through calls
 * to function CIC_set_irq_handler().
 */
static interrupt_handler_t g_irq_handler_table[CIC_NB_IRQ_SOURCES];

/***************************************************************************//**
 * CIC_init()
 * See "core_irq_ctrl.h" for details of how to use this function.
 */
void
CIC_init
(
	addr_t address
)
{
	uint8_t irq_idx;
	g_cic_base_addr = address;
	
    /* Disable all FIQs. */
    HAL_set_32bit_reg( g_cic_base_addr, FIQEnableClear, CLEAR_ALL_BITS );
    
    /* Disable all IRQs. */
    HAL_set_32bit_reg( g_cic_base_addr, IRQEnableClear, CLEAR_ALL_BITS );
    
    /* Clear the IRQ handler function table. */
    for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
    {
        g_irq_handler_table[irq_idx] = NO_HANDLER;
    }
}

/***************************************************************************//**
 * CIC_set_irq_handler()
 * See "core_irq_ctrl.h" for details of how to use this function.
 */
void
CIC_set_irq_handler
(
	uint8_t irq_number, 
	interrupt_handler_t handler
)
{
	HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
      
	g_irq_handler_table[irq_number] = handler;
}

/***************************************************************************//**
 * CIC_get_irq_status()
 * See "core_irq_ctrl.h" for details of how to use this function.
 */
uint32_t
CIC_get_irq_status
(
    void 
)
{
 	uint32_t irq_status = 0;
 	
	irq_status = HAL_get_32bit_reg( g_cic_base_addr, IRQStatus );
    
 	return irq_status;
}

/***************************************************************************//**
 * CIC_enable_irq()
 * See "core_irq_ctrl.h" for details of how to use this function.
 */
void
CIC_enable_irq
(
    uint8_t irq_number
)
{
	uint32_t enabled_irqs;
    
	HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
    
    enabled_irqs = HAL_get_32bit_reg( g_cic_base_addr, IRQEnable );
    enabled_irqs |= 1 << irq_number;
    HAL_set_32bit_reg( g_cic_base_addr, IRQEnable, enabled_irqs );
}

/***************************************************************************//**
 * CIC_disable_irq()
 * See "core_irq_ctrl.h" for details of how to use this function.
 */
void
CIC_disable_irq
(
    uint8_t irq_number
)
{
	uint32_t clear_bit;
    
	HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
    
    clear_bit = 1 << irq_number;
    HAL_set_32bit_reg( g_cic_base_addr, IRQEnableClear, clear_bit );
}

/***************************************************************************//**
 * CIC_irq_handler()
 * See "core_irq_ctrl.h" for details of how to use this function.
 */
void
CIC_irq_handler
(
    void
)
{
	uint8_t irq_idx;
	uint32_t irq_status;
	
    irq_status = HAL_get_32bit_reg( g_cic_base_addr, IRQStatus );

    for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
    {
        uint32_t irq_fired = irq_status & (1 << irq_idx);
        if ( irq_fired )
        {
            if ( g_irq_handler_table[irq_idx] == NO_HANDLER )
            {
                HAL_ASSERT(0)
                CIC_disable_irq( irq_idx );
            }
            else
            {
                /* Execute interrupt service routine. */
                (*g_irq_handler_table[irq_idx])();
            }
        }
    }
}
