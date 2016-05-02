/*******************************************************************************
 * (c) Copyright 2007 Actel Corporation.  All rights reserved.
 * 
 * CoreGPIO public API.
 *
 * SVN $Revision: 403 $
 * SVN $Date: 2008-06-05 11:26:52 +0100 (Thu, 05 Jun 2008) $
 */
#ifndef CORE_GPIO_H_
#define CORE_GPIO_H_

#include "cpu_types.h"

/***************************************************************************//**
 * Gpio instance structure.
 * There should be one instance of this structure for each instance of Gpio
 * in your system. GPIO_init routine initializes this structure. It is used to 
 * identify the various GPIOs in your system and an initilized gpio instance's 
 * structure should be passed as first parameter to GPIO functions to identify 
 * which GPIO should perform the requested operation.
 * Software, using this driver should only need to create one single instance of 
 * this data structure for each gpio instance in the system.
 */
typedef struct gpio_instance
{
	addr_t address;
	uint32_t output_state;
} gpio_instance_t;

/*******************************************************************************
 * port definitions
 * All operations on gpio ports should state which gpio the action should affect.
 * Choice of ports might be done using the following definitions.
 */
#define GPIO_BIT_0		0x00000001UL
#define GPIO_BIT_1		0x00000002UL
#define GPIO_BIT_2		0x00000004UL
#define GPIO_BIT_3		0x00000008UL
#define GPIO_BIT_4		0x00000010UL
#define GPIO_BIT_5		0x00000020UL
#define GPIO_BIT_6		0x00000040UL
#define GPIO_BIT_7		0x00000080UL
#define GPIO_BIT_8		0x00000100UL
#define GPIO_BIT_9		0x00000200UL
#define GPIO_BIT_10		0x00000400UL
#define GPIO_BIT_11		0x00000800UL
#define GPIO_BIT_12		0x00001000UL
#define GPIO_BIT_13		0x00002000UL
#define GPIO_BIT_14		0x00004000UL
#define GPIO_BIT_15		0x00008000UL
#define GPIO_BIT_16		0x00010000UL
#define GPIO_BIT_17		0x00020000UL
#define GPIO_BIT_18		0x00040000UL
#define GPIO_BIT_19		0x00080000UL
#define GPIO_BIT_20		0x00100000UL
#define GPIO_BIT_21		0x00200000UL
#define GPIO_BIT_22		0x00400000UL
#define GPIO_BIT_23		0x00800000UL
#define GPIO_BIT_24		0x01000000UL
#define GPIO_BIT_25		0x02000000UL
#define GPIO_BIT_26		0x04000000UL
#define GPIO_BIT_27		0x08000000UL
#define GPIO_BIT_28		0x10000000UL
#define GPIO_BIT_29		0x20000000UL
#define GPIO_BIT_30		0x40000000UL
#define GPIO_BIT_31		0x80000000UL

/***************************************************************************//**
 * GPIO_init function initializes CoreGPIO with default configuration and output
 * port state.
 *
 * @param this_gpio		    Pointer to the gpio_instance_t data structure instance
 *							holding all data regarding the CoreGPIO hardware 
 *							instance being initialized. A pointer to the same data
 *							structure will be used in subsequent calls to the 
 *							CoreGPIO driver functions in order to identify the 
 *							CoreGPIO instance that should perform the operation
 *							implemented by the called driver function.
 *
 * @param base_address	    Base address in the processor's memory map for the 
 *							registers of the GPIO instance being initialized.
 *
 * @param initial_output    This variable holds the initial state of the general
 *							purpose outputs. This is a 32-bit variable where each
 *							bit represents one of the CoreGPIO outputs; bit n 
 *							representing the state of GPIO output n. Bits set to 
 *							one indicates outputs that must be asserted.
 *
 */
void
GPIO_init
(
	gpio_instance_t * this_gpio, 
	addr_t base_address,
	uint32_t initial_output
);

/***************************************************************************//**
 * The function GPIO_set_bits() sets the state of all CoreGPIO output signals.
 * 
 * @param this_gpio	    This parameter is a pointer to the gpio_instance_t 
 *						structure holding all data regarding the CoreGPIO instance
 *						controlled through this function call.
 *
 * @param value		    This variable holds the requested state of the general 
 *						purpose outputs. This is a 32-bit variable where each bit 
 *						represents one of the CoreGPIO outputs; bit n representing 
 *						the state of GPIO output n. Bits set to one indicates 
 *						outputs that must be asserted.
 */
void
GPIO_set_output
(
	gpio_instance_t * this_gpio, 
	uint32_t value
);

/***************************************************************************//**
 * The function GPIO_set_bits() sets the state of the general purpose outputs 
 * specified by the bit_mask parameter to the state specified by the bit_value
 * parameter.
 * 
 * @param this_gpio	    This parameter is a pointer to the gpio_instance_t 
 *						structure holding all data regarding the CoreGPIO instance 
 *						controlled through this function call.
 *
 * @param bit_mask	    This variable specifies the outputs that will be set 
 *						though this function call. This is a 32-bit variable where 
 *						each bit represents one of the CoreGPIO outputs; bit n 
 *						representing the state of GPIO output n. Bits set to one 
 *						indicates outputs that will be changed to the state 
 *						specified by the bit_value parameter. Multiple output ports 
 *						can be set through a call to this function by setting this 
 *						parameter’s value to a logical-or of the port identifiers 
 *						constants of the ports to set.
 *
 * @param bit_value	    This parameter specifies the requested state of the output 
 *						ports identified though the bit_mask parameter. A value 
 *						of 1 will assert outputs high, 0 will set outputs low.
 */
void
GPIO_set_bits
(
	gpio_instance_t * this_gpio, 
	uint32_t bit_mask, 
	int32_t bit_value
);

/***************************************************************************//**
 * The function GPIO_get_input() returns the current state of all input ports.
 *
 * @param this_gpio	    This parameter is a pointer to the gpio_instance_t 
 *						structure holding all data regarding the CoreGPIO instance 
 *						controlled through this function call.
 *
 * @return			    This function returns the current state of the input ports. 
 *						This is a 32-bit variable where each bit represents one of 
 *						the CoreGPIO input port state; bit n representing the state 
 *						of GPIO input port n. A logical-and of a port identifier 
 *						constant with this return value will result in a non-zero 
 *						value if the specified port is set asserted high.
 */
uint32_t
GPIO_get_input
(
	gpio_instance_t * this_gpio
);

/***************************************************************************//**
 * The function GPIO_get_bit() returns the value of the input port identified 
 * through parameter bit_id.
 *
 * @param this_gpio     This parameter is a pointer to the gpio_instance_t 
 *						structure holding all data regarding the CoreGPIO instance 
 *						controlled through this function call.
 * @param bit_id		Input port identifier of the selected port. 
 *						Note: The state of only one input port can be requested 
 *						on each call to function GPIO_get_bit().
 *
 * @return              This function will return 0 if the specified input port 
 *						is low. It will return 1 is the specified input port is 
 *						asserted high.
 */
uint32_t
GPIO_get_bit
(
	gpio_instance_t * this_gpio,
	uint32_t bit_id
);

#endif /*CORE_GPIO_H_*/
