/*******************************************************************************
 * (c) Copyright 2008 Actel Corporation
 * 
 *
 *
 * SVN $Revision: 638 $
 * SVN $Date: 2009-02-11 15:02:08 +0000 (Wed, 11 Feb 2009) $
 */
#include "hal.h"
#include "hw_reg_access.h"

/*******************************************************************************
 * See "hw_reg_access.h" for API details.
 */
void
HW_set_32bit_reg_field
(
    addr_t reg_addr,
    int_fast8_t shift,
    uint32_t mask,
    uint32_t value
)
{
	volatile uint32_t temp32;
	temp32 = HW_get_32bit_reg( reg_addr );
	temp32 = ((temp32 & ~mask) | (((value) << shift) & mask));
	HW_set_32bit_reg(reg_addr, temp32);
}

/*******************************************************************************
 * See "hw_reg_access.h" for API details.
 */
uint32_t 
HW_get_32bit_reg_field
(
    addr_t reg_addr,
    int_fast8_t shift,
    uint32_t mask
)
{
	volatile uint32_t temp32;
	temp32 = (HW_get_32bit_reg(reg_addr) & mask) >> shift;
	return temp32;
}

/*******************************************************************************
 * See "hw_reg_access.h" for API details.
 */
void HW_set_16bit_reg_field
(
    addr_t reg_addr,
    int_fast8_t shift,
    uint_fast16_t mask,
    uint_fast16_t in_value16
)
{
    volatile uint16_t temp16;
	temp16 = HW_get_16bit_reg( reg_addr );
	temp16 = ((temp16  & ~mask) | (((in_value16) << shift) & mask));
	HW_set_16bit_reg(reg_addr, temp16);
}

/*******************************************************************************
 * See "hw_reg_access.h" for API details.
 */
uint16_t HW_get_16bit_reg_field
(
    addr_t reg_addr,
    int_fast8_t shift,
    uint_fast16_t mask
)
{
    volatile uint16_t temp16;
	temp16 = (HW_get_16bit_reg(reg_addr) & mask) >> shift;
	return temp16;
}

/*******************************************************************************
 * See "hw_reg_access.h" for API details.
 */
void HW_set_8bit_reg_field
(
    addr_t reg_addr,
    int_fast8_t shift,
    uint_fast8_t mask,
    uint_fast8_t value
)
{
    volatile uint8_t temp8;
	temp8 = HW_get_8bit_reg( reg_addr );
	temp8 = ((temp8  & ~mask) | (((value) << shift) & mask));
	HW_set_8bit_reg(reg_addr, temp8);
}

/*******************************************************************************
 * See "hw_reg_access.h" for API details.
 */
uint8_t HW_get_8bit_reg_field
(
    addr_t reg_addr,
    int_fast8_t shift,
    uint_fast8_t mask
)
{
    volatile uint8_t temp8;
	temp8 = (HW_get_8bit_reg(reg_addr) & mask) >> shift;
	return temp8;
}

