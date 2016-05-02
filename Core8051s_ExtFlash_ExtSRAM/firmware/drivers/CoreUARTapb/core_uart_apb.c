/*******************************************************************************
 * (c) Copyright 2007-2008 Actel Corporation.  All rights reserved.
 * 
 * CoreUARTapb driver implementation. See file "core_uart_apb.h" for a
 * description of the functions implemented in this file.
 * 
 * SVN $Revision: 911 $
 * SVN $Date: 2009-05-19 12:15:01 +0100 (Tue, 19 May 2009) $
 */
#include "hal.h"
#include "coreuartapb_regs.h"
#include "core_uart_apb.h"
#include "hal_assert.h"

#ifndef NDEBUG
static UART_instance_t* NULL_instance;
static uint8_t* NULL_buffer;
#endif

#define MAX_LINE_CONFIG     (DATA_8_BITS | ODD_PARITY)

/***************************************************************************//**
 * UART_init()
 * See "core_uart_apb.h" for details of how to use this function.
 */
void
UART_init
(
	UART_instance_t * this_uart,
	addr_t base_addr,
	uint8_t baud_value,
	uint8_t line_config
)
{
    uint8_t rx_full;
    
	HAL_ASSERT( this_uart != NULL_instance )
	HAL_ASSERT( line_config <= MAX_LINE_CONFIG )
      
    HAL_set_8bit_reg(base_addr, CTRL1, (uint_fast8_t)baud_value);
    HAL_set_8bit_reg(base_addr, CTRL2, (uint_fast8_t)line_config);

    this_uart->base_address = base_addr;
    
    /*
     * Flush the receive FIFO of data that may have been received before the
     * driver was initialised.
     */
    rx_full = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_RXFULL_MASK;
    while ( rx_full )
    {
        volatile uint8_t rx_byte;
        rx_byte = HAL_get_8bit_reg( this_uart->base_address, RXDATA );
        rx_full = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_RXFULL_MASK;
    }
}

/***************************************************************************//**
 * UART_send()
 * See "core_uart_apb.h" for details of how to use this function.
 */
void
UART_send
(
    UART_instance_t * this_uart,
    const uint8_t * tx_buffer,
    size_t tx_size
)
{
	size_t char_idx;
    uint8_t tx_ready;

	HAL_ASSERT( this_uart != NULL_instance )
	HAL_ASSERT( tx_buffer != NULL_buffer )
	HAL_ASSERT( tx_size > 0 )
      
    for ( char_idx = 0; char_idx < tx_size; char_idx++ )
    {
        /* Wait for UART to become ready to transmit. */
        do {
            tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_TXRDY_MASK;
        } while ( !tx_ready );
        /* Send next character in the buffer. */
        HAL_set_8bit_reg( this_uart->base_address, TXDATA, (uint_fast8_t)tx_buffer[char_idx] );
    }
}

/***************************************************************************//**
 * UART_fill_tx_fifo()
 * See "core_uart_apb.h" for details of how to use this function.
 */
size_t
UART_fill_tx_fifo
(
	UART_instance_t * this_uart,
	const uint8_t * tx_buffer,
	size_t tx_size
)
{
    uint8_t tx_ready;
    size_t size_sent = 0;
    
	HAL_ASSERT( this_uart != NULL_instance )
	HAL_ASSERT( tx_buffer != NULL_buffer )
	HAL_ASSERT( tx_size > 0 )
      
    /* Fill the UART's Tx FIFO until the FIFO is full or the complete input 
     * buffer has been written. */
    tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_TXRDY_MASK;
    if ( tx_ready )
    {
        do {
            HAL_set_8bit_reg( this_uart->base_address, TXDATA, (uint_fast8_t)tx_buffer[size_sent] );
            size_sent++;
            tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_TXRDY_MASK;
        } while ( (tx_ready) && ( size_sent < tx_size ) );
    }
    
    return size_sent;
}

/***************************************************************************//**
 * UART_get_rx()
 * See "core_uart_apb.h" for details of how to use this function.
 */
size_t
UART_get_rx
(
    UART_instance_t * this_uart,
    uint8_t * rx_buffer,
    size_t buff_size
)
{
    uint8_t rx_full;
	size_t rx_idx = 0;
    
	HAL_ASSERT( this_uart != NULL_instance )
	HAL_ASSERT( rx_buffer != NULL_buffer )
	HAL_ASSERT( buff_size > 0 )
      
    rx_idx = 0;
    rx_full = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_RXFULL_MASK;
    while ( ( rx_full ) && ( rx_idx < buff_size ) )
    {
        rx_buffer[rx_idx] = HAL_get_8bit_reg( this_uart->base_address, RXDATA );
        rx_idx++;
        rx_full = HAL_get_8bit_reg( this_uart->base_address, STATUS ) & STATUS_RXFULL_MASK;
    }
    
	return rx_idx;
}

