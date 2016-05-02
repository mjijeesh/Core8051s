/*******************************************************************************
 * (c) Copyright 2007-2008 Actel Corporation.  All rights reserved.
 * 
 * This file contains the application programming interface for the CoreUARTapb
 * bare metal driver.
 * 
 * SVN $Revision: 260 $
 * SVN $Date: 2008-04-17 10:17:46 +0100 (Thu, 17 Apr 2008) $
 */
#ifndef __CORE_UART_APB_H
#define __CORE_UART_APB_H 1

#include "cpu_types.h"

/***************************************************************************//**
 * Data bits length defines:
 */
#define DATA_7_BITS		0x00
#define DATA_8_BITS		0x01

/***************************************************************************//**
 * Parity defines:
 */
#define NO_PARITY		0x00
#define EVEN_PARITY		0x02
#define ODD_PARITY		0x06

/***************************************************************************//**
 * UART_instance_t
 * 
 * There should be one instance of this structure for each instance of CoreUARTapb
 * in your system. This structure instance is used to identify the various UARTs
 * in a system and should be passed as first parameter to UART functions to 
 * identify which UART should perform the requested operation.
 */
typedef struct
{
	addr_t		base_address;
} UART_instance_t;

/***************************************************************************//**
 * UART_init() initialises the UART with the configuration passed as parameters.
 * The configuration parameters are the baud_value used to generate the baud
 * rate and the line configuration (bit length and parity).
 *
 * @param this_uart     Pointer to a UART_instance_t structure which will hold
 *                      all data regarding this instance of the core UART as the 
 *                      initialization ends without any errors.
 * @param base_addr     Base address in the processor's memory map for the
 *                      registers of the Core UART instance being initialised.
 * @param baud_value    The baud value is calculated based on the system clock 
 *                      and the desired baud rate using the following equation:
 *                      baud_value = (clock /(baud_rate * 16)) - 1
 * @param line_config   The line configuration specifying the bit length and
 *						parity settings. This is a logical or of DATA_7_BITS,
 *						DATA_8_BITS, NO_PARITY, EVEN_PARITY, ODD_PARITY.
 *						For example, 8 bits even parity would be specified as
 *						(DATA_8_BITS | EVEN_PARITY).
 */
void
UART_init
(
	UART_instance_t * this_uart,
	addr_t base_addr,
	uint8_t baud_value,
	uint8_t line_config
);

/***************************************************************************//**
 * UART_send() is used to transmit data. 
 * It transfers the content of the transmit data buffer passed as parameter into
 * the UART's hardware transmit FIFO. It only returns once the full content of
 * the transmit buffer, passed as parameter, has been consumed.
 * Note: you cannot assume that the data you are sending using this function has
 * been received at the other end by the time this function returns. The actual
 * transmit over the serial connection will still be taking place at the time of
 * the function return. It is safe to release or reuse the memory used as the
 * transmit buffer once this function returns.
 *
 * @param this_uart     Pointer to a UART_instance_t structure which holds all
 *                      data regarding this instance of the UART.
 * @param tx_buffer     Pointer to a buffer containing the data to be transmitted.
 * @param tx_size       Size of the data in bytes, to be transmitted.
 */
void
UART_send
(
	UART_instance_t * this_uart,
	const uint8_t * tx_buffer,
	size_t tx_size
);

/***************************************************************************//**
 * UART_fill_tx_fifo() fills the UART's transmit hardware FIFO with the data
 * found in the transmit buffer passed as parameter. It returns when either the
 * UART's transmit hardware FIFO is full or the complete content of the transmit
 * buffer passed as parameter has copied into the UART's transmit hardware FIFO.
 * It returns the number of bytes actually copied into the UART's transmit
 * hardware FIFO.
 * This function is intended to be used as part of interrupt driven transmit.
 * 
 * @param this_uart     Pointer to a UART_instance_t structure which holds all
 *                      data regarding this instance of the UART.
 * @param tx_buffer     Pointer to a buffer containing the data to be transmitted.
 * @param tx_size       Size of the data in bytes, to be transmitted.
 * @return              Number of bytes copied into the receive buffer passed as
 *                      parameter.
 */
size_t
UART_fill_tx_fifo
(
	UART_instance_t * this_uart,
	const uint8_t * tx_buffer,
	size_t tx_size
);

/***************************************************************************//**
 * UART_get_rx() reads the content of the UART's receive FIFO and stores it in
 * the receive buffer passed as parameter. It copies the full content of the
 * UART receive hardware FIFO or enough data to fill the received buffer
 * depending on the size of receive buffer passed as parameter.
 * It returns the number of bytes copied into the received buffer. It return 0
 * if no data was received at the time the function is called.
 *
 * @param this_uart     Pointer to a UART_instance_t structure which holds
 *                      all data regarding this instance of the UART.
 * @param rx_buffer     Pointer to a buffer where the received data will be copied.
 * @param buff_size     Size of the receive buffer in bytes.
 * @return              Number of bytes copied into the receive buffer passed as
 *                      parameter.
 */
size_t
UART_get_rx
(
	UART_instance_t * this_uart,
	uint8_t * rx_buffer,
	size_t buff_size
);

#endif /* __CORE_UART_APB_H */
