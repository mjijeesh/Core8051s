/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * CoreGPIO driver implementation.
 *
 * SVN $Revision: 908 $
 * SVN $Date: 2009-05-19 12:13:07 +0100 (Tue, 19 May 2009) $
 */
#include "hal.h"
#include "hal_assert.h"
#include "core_gpio.h"
#include "coregpio_regs.h"
#include "hw_reg_access.h"

#ifndef NDEBUG
static gpio_instance_t* NULL_instance; /* NULL value with appropriate typedef*/
#endif

/***************************************************************************//**
 * GPIO_init()
 * See "core_gpio.h" for details of how to use this function.
 */
void
GPIO_init
(
	gpio_instance_t * this_gpio, 
	addr_t base_address,
	uint32_t initial_output
)
{
	HAL_ASSERT( this_gpio != NULL_instance )

    this_gpio->address = base_address;
    this_gpio->output_state = initial_output;
    HAL_set_32bit_reg( this_gpio->address, OUTPUTS, initial_output );
}

/***************************************************************************//**
 * GPIO_set_output()
 * See "core_gpio.h" for details of how to use this function.
 */
void
GPIO_set_output
(
	gpio_instance_t * this_gpio, 
	uint32_t value
)
{
	HAL_ASSERT( this_gpio != NULL_instance )

    this_gpio->output_state = value;
    HAL_set_32bit_reg( this_gpio->address, OUTPUTS, value );
}

/***************************************************************************//**
 * GPIO_set_bits()
 * See "core_gpio.h" for details of how to use this function.
 */
void
GPIO_set_bits
(
	gpio_instance_t * this_gpio, 
	uint32_t bit_mask, 
	int32_t bit_value
)
{
	uint32_t out_value;

	HAL_ASSERT( this_gpio != NULL_instance )
	/* bit_value can be either "0" or "1" */
	HAL_ASSERT( bit_value < 2 )
	

    out_value = this_gpio->output_state;
    
    if ( bit_value == 0 )
    {
        out_value &= ~bit_mask;
    }
    else
    {
        out_value |= bit_mask;
    } 
    
    this_gpio->output_state = out_value;
    HAL_set_32bit_reg( this_gpio->address, OUTPUTS, out_value );
}

/***************************************************************************//**
 * GPIO_get_input()
 * See "core_gpio.h" for details of how to use this function.
 */
uint32_t
GPIO_get_input
(
	gpio_instance_t * this_gpio
)
{
	HAL_ASSERT( this_gpio != NULL_instance )

	return ( HAL_get_32bit_reg( this_gpio->address, INPUTS ) );
}

/***************************************************************************//**
 * GPIO_get_bit()
 * See "core_gpio.h" for details of how to use this function.
 */
uint32_t
GPIO_get_bit
(
	gpio_instance_t * this_gpio,
	uint32_t bit_id
)
{
	uint32_t gpio_in, return_value = 0;
	
	HAL_ASSERT( this_gpio != NULL_instance )

    gpio_in = HAL_get_32bit_reg( this_gpio->address, INPUTS );
    
    if ( (gpio_in & bit_id) > 0 )
    {
        return_value = 1;
    }
	return return_value;
}
