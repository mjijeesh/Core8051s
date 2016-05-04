/*
 * Core1553 Experimental Driver
 *
 * Author : Jijeesh M
 *
 *
 *
 */


#include "hal/hal.h"
#include "platform.h"
#include "core_gpio.h"
#include "core_uart_apb.h"
#include "user_gpio.h"
#include "socDefs.h"
#include "brt.h"
#include "brm_bc.h"

void display_prompt(void);
void print_registers(void);
void print_bc_messages(void);
void print_rt_data(uint32 rt_adress,uint8_t sa);
void change_rt_data(uint32 rt_adress,uint8_t sa);
void change_bc_data(uint8_t msg_no);
void read_user_input (uint8 *rx_char_ptr);
void display_rt_registers(uint32_t rt_adress);
void bc_memory_data(uint16_t addr);

void process_uart_data(uint8_t key);
void display_help(void);

uint8 rx_char[10];
uint8 *rx_char_ptr;
uint8 display_buffer[20];
uint8 key = '-';
uint8 rx_size = 0;
uint32_t  user_input = 0;
uint32_t last_rt_subaddress= BRT_RX_SA1;
uint8_t last_sub_address;
uint8_t last_msg_no;
uint8_t  temp;



uint8_t get_key_selection(void);
//void print_test(void) ;





#define INPUT_TO_OUTPUT_BIT_OFFSET      4

gpio_instance_t g_gpio1; /* GPIO instant name */



/******************************************************************************
 * main function.
 *****************************************************************************/ 
int main( void )
{
	uint32_t io_state;


unsigned char next_msg[] = "\r\nPress Any key to Continue\r\n";



	/**************************************************************************
	 * Initialize the CoreGPIO driver with the base address of the CoreGPIO
	 * instance to use and the initial state of the outputs. 
	 *************************************************************************/	
	user_gpio_init();   /* initialise the GPIo for JTAG interface */
	user_uart_init();  /* Initialise teh UARt for Debug display */


	/**************************************************************************
	 * Infinite Loop.
	 *************************************************************************/

	 init_brm();
	 brt_init(RT_BASE_ADDR);
	 display_help();
	 display_prompt();


    while(1)
    {




    	//key = get_key_selection();

    	uint8_t rx_data[2];
	    uint8_t rx_size =0;

		   rx_size = UART_get_rx(&g_stdio_uart, &rx_data[1],1);

    	   if ( rx_size == 1){
    		  // UART_send (&g_stdio_uart, &key,sizeof (key));
    		   key = rx_data[1];
    			process_uart_data(key);

    	   }

    	   // update the GPIO reading to SA 1 TX buffer for transmission
    	   //temp = GPIO_get_inputs( &g_gpio ); // read from the switches
    	   HW_set_16bit_reg((RT_BASE_ADDR + BRT_TX_SA1),GPIO_get_inputs( &g_gpio ));  ;

    	   temp = HW_get_16bit_reg(RT_BASE_ADDR + BRT_RX_SA1);
           // UPdate the LEDs with the SA 1 Received data
    	   GPIO_set_outputs( &g_gpio,(uint8_t)temp );



    }
}

void display_prompt(void) {

	dp_display_text("\r\nCore1553BRT>");


}


void display_help(void){
	uint8_t tx_data[24][40] = {

	      {"\r\nR Read BRT Register  		   "},
	      {"\r\nM Modify BRT TX Buffer 		   "},
	      {"\r\nD Display BRT  TX/RX Buffer Data"},
	      {"\r\nB Display BC messages        "},
	      {"\r\nX Start BRM BC               "},
	      {"\r\nC Change the BRT Address(Default:0x4 "},
	      {"\r\nN change the BC Data values   "},
	  //    {"\r\nU Update from Sensor data to SA25 TX Buffer   "},
	      {"\r\nH Display This Menu        \r\n"}
	 };

	      UART_send(&g_stdio_uart, tx_data[0],sizeof(tx_data));


}




uint8_t get_key_selection(void)
{



      uint8_t rx_data[2];
      uint8_t rx_size =0;

           do {
               rx_size = UART_get_rx(&g_stdio_uart, &rx_data[1],1);
           }while(rx_size == 0);

           key = rx_data[1];
           //dp_display_text("\n\r Selected fuction is: ");
           UART_send (&g_stdio_uart, &key,sizeof (key));
           return rx_data[1];

    }




void print_registers(void){

			 uint32   memory_address,mem_data;
			 //uint32_t   bc_reg[16];
			 uint8   i;

			 memory_address  = BC_BASE_ADDR ;  // 16 location from here onwards

			 dp_display_text("\n\r BRM register Contents\r\n ");
			 for ( i=0; i<= 15 ;i++) {
			   dp_display_text("\r\n");
			   dp_display_value(i,DEC);
			   dp_display_text("\t");
		       dp_display_value(memory_address,HEX);
		       dp_display_text("\t");
			   mem_data = HW_get_16bit_reg( memory_address);
			   dp_display_value(mem_data,HEX);
			   memory_address = memory_address + 4;
			 }
		 }


void print_bc_messages(void){

			 uint32   memory_address,mem_data;
			 //uint32_t   bc_reg[16];
			 uint8   i,m;

			 memory_address  = 0xA0000100;  // 16 location from here onwards

			 dp_display_text("BRM Messages\r\n ");
			 for ( i=1; i <= 15 ;i++) {
		    dp_display_text("\r\n");
		    dp_display_value(i,DEC);
		    dp_display_text("\t ");
		    dp_display_value(memory_address,HEX);
		    dp_display_text("\t");

		    for (m=1; m <=8 ;m++){

		    	mem_data= HW_get_16bit_reg(memory_address);
			 dp_display_value(mem_data,HEX);
			 dp_display_text("\t ");
			 memory_address = memory_address + 4;
		    }

		   }
		 }


void print_rt_data(uint32 rt_adress,uint8_t sa){

			 uint32   memory_address,mem_data;
			 uint32   tx_sub_address,rx_sub_address;

			 uint8   i,m;

			 memory_address  = rt_adress;  // 16 location from here onwards

			 rx_sub_address = rt_adress + (BRT_RX_SA1 * sa);   //0x1080
			 tx_sub_address = rx_sub_address + 0x1000;   //0x1080

			 dp_display_text("\n\r BRT SA");
			 dp_display_value(sa,DEC);
			 dp_display_text("   RX Buffer\r\n");

			 for ( i=1; i <= 4 ;i++) {
				dp_display_text("\r\n");
				dp_display_value(i,DEC);
				dp_display_text("\t");
				dp_display_value(rx_sub_address,HEX);
				dp_display_text("\t");

				for (m=1; m <=8 ;m++){

				  mem_data= HW_get_16bit_reg(rx_sub_address);
				 dp_display_value(mem_data,HEX);
				 dp_display_text("\t");
				 rx_sub_address = rx_sub_address + 4;
				}

			 }


			 dp_display_text("\n\r BRT SA");
			 			 dp_display_value(sa,DEC);
			 			 dp_display_text("  TX Buffer\r\n");

			 			 for ( i=1; i <= 4 ;i++) {
			 				dp_display_text("\r\n");
			 				dp_display_value(i,DEC);
			 				dp_display_text("\t");
			 				dp_display_value(tx_sub_address,HEX);
			 				dp_display_text("\t");

			 				for (m=1; m <=8 ;m++){

			 				  mem_data= HW_get_16bit_reg(tx_sub_address);
			 				 dp_display_value(mem_data,HEX);
			 				 dp_display_text("\t");
			 				tx_sub_address = tx_sub_address + 4;
			 				}

			 			 }

		 }



/* Function to check any key press */
		void read_user_input (uint8 *rx_char_ptr)
		{
		    uint8 recv_char,size, index = 0;
		    uint32 input_number;
		    for(index = 0; index < 10; index++)
		    {
		    	rx_char[index] = '0';
		    }
		    index = 0;
		    while(recv_char != 13)  //'\n'
		    {
		      size = UART_get_rx(&g_stdio_uart, &recv_char,1);
			  if(size > 0)
			  {

				  rx_char_ptr[index] = recv_char;
				  UART_send (&g_stdio_uart, (unsigned char *)&recv_char,sizeof(recv_char));
				  index++;
				  size = 0; // clear the rcvd flag
			  }
			}

		}


		void process_uart_data(uint8_t key)
		   {
			   switch(key)
		       {

				   case 'R' : case 'r':
			   	   {
			   			//print_registers();
			   			display_rt_registers(RT_BASE_ADDR);



			   		break;
			   	   }


				   case 'B':  case 'b':// toggle ENN signal of TMC603A
				   {
					   print_bc_messages();
					   break;
				   }

				   case 'M': case 'm':
					   {

						   while (1) {
						   				   			dp_display_text("Sub Address #(1 to 30): ");
						   				   			rx_char_ptr = rx_char;
						   				   		    read_user_input(rx_char_ptr);
						   				   			 xatoi ( &rx_char_ptr, &user_input);
						   				   			dp_display_value(user_input,HEX);

						   				   			if ((user_input > 0 ) && (user_input < 33))
						   				   		        {
						   				   				last_sub_address   = user_input;
						   				   				change_rt_data(RT_BASE_ADDR ,last_sub_address);
						   				   				 break;

						     				   			    } else {

						     				   			   dp_display_text("\r\n\Invaid input !!!!! Enter the Sub Address # ( 0 to 31)to display Data: ");

						     				   			    }

						   				   		}
						   break;
					   }




				   case 'D': case 'd':
				   		   {

				   		while (1) {
				   			dp_display_text("Sub Address #(1 to 31 ): ");
				   			rx_char_ptr = rx_char;
				   		    read_user_input(rx_char_ptr);
				   			 xatoi ( &rx_char_ptr, &user_input);
				   			dp_display_value(user_input,HEX);

				   			if ((user_input > 0 ) && (user_input < 32))
				   		        {
				   				last_sub_address   = user_input;
				   				print_rt_data(RT_BASE_ADDR ,last_sub_address);
				   				 break;

  				   			    } else {

  				   			   dp_display_text("\r\n\Invaid input !!!!! Enter the Sub Address # ( 0 to 31)to display Data: ");

  				   			    }

				   		}



				   			    break;
				   		   }
				   case 'H': case 'h':
				  	    {

				   		display_help();
                        break;
				  	    }
				   case 'U': case 'u':
				   				  	    {

				   				  	    	 temp = GPIO_get_inputs( &g_gpio );
				   				  	   HW_set_16bit_reg((RT_BASE_ADDR + BRT_TX_SA25),GPIO_get_inputs( &g_gpio ));  ;
				                           break;
				   				  	    }



			   case 'x': case 'X':
									{

										 bc_start_bc ();
										 dp_display_text("\r\n BC Started Communication \r\n ");

									   break;
									}

			   case 'c': case 'C':


			                      {

			                    	  //temp = HW_get_16bit_reg( brt_base_addr + BRT_CONTROL_REG);



												while (1) {
											dp_display_text("\r\n Enter the new RTADDR # ( 1 to 30): ");
											rx_char_ptr = rx_char;
											read_user_input(rx_char_ptr);
											 xatoi ( &rx_char_ptr, &user_input);
											dp_display_value(user_input,HEX);

											if ((user_input > 0 ) && (user_input < 31))
												{
												modify_rt_address(RT_BASE_ADDR,  user_input);
												 break;

												} else {

											   dp_display_text("\r\n\Invaid input !!!!! Enter  Address # ( 1 to 30): ");
											   break;

												}

										}
			   									   break;
			   									}


			   case 'N': case 'n':
			   					   {

			   						   while (1) {
			   						   				   			dp_display_text("\r\n Enter the memory addr  # ( 0x0000 to 0xfffc): ");
			   						   				   			rx_char_ptr = rx_char;
			   						   				   		    read_user_input(rx_char_ptr);
			   						   				   			 xatoi ( &rx_char_ptr, &user_input);
			   						   				   			dp_display_value(user_input,HEX);

			   						   				   			if ((user_input >= 0 ) && (user_input < 0xfffc))
			   						   				   		        {
			   						   				   				last_msg_no   = user_input;
			   						   				   		bc_memory_data(user_input);
			   						   				   		//change_bc_data(last_msg_no);
			   						   				   				//change_rt_data(RT_BASE_ADDR ,last_sub_address);
			   						   				   				 break;

			   						     				   			    } else {

			   						     				   			   //dp_display_text("\r\n\Invaid input !!!! Enter the msg Number # ( 0 to 31)to display Data: ");
			   						     				   			    break;

			   						     				   			    }

			   						   				   		}
			   						   break;
			   					   }


				   default:  /* If selected key is out of range */
				   {

					   break;
				   }
		       }


			   display_prompt();

		   }


		void change_rt_data(uint32 rt_adress,uint8_t sa){

					 uint32   memory_address,mem_data;
					 uint32   tx_sub_address,rx_sub_address;

					 uint8 recv_char,size, index = 0;
					 uint32 input_data;

					 uint8   i,m;

					 for(index = 0; index < 10; index++)
					 		    {
					 		    	rx_char[index] = '0';
					 		    }
					 		    index = 0;


					 memory_address  = rt_adress;  // 16 location from here onwards

					 rx_sub_address = rt_adress + (BRT_RX_SA1 * sa);   //0x1080
					 tx_sub_address = rx_sub_address + 0x1000;        //0x1080

					 dp_display_text("\n\r BRT SA");
					 dp_display_value(sa,DEC);
					 dp_display_text("   Enter New data ( eg: 0x10fe ,  1234, 0b1010110  \r\n");

					 for ( i=0; i <= 31 ;i++) {
						dp_display_text("\r\n");
						dp_display_value(i,DEC);
						dp_display_text("\t");
						dp_display_value(tx_sub_address,HEX);
						dp_display_text(":");
 					    mem_data= HW_get_16bit_reg(tx_sub_address);
						dp_display_value(mem_data,HEX);
						dp_display_text("->");
						key = get_key_selection();
						if ( key == 27){  // ESC key == exit from writting
							return;
						}else if ( key == 13) // Return key, move to next address
						{
						  tx_sub_address = tx_sub_address + 4;
						} else

						{
							rx_char[0] = key;  // put the previosly rxvd character to buffer;

					        index = 1;
									    while(recv_char != 13)  //'\n'
									    {
									      size = UART_get_rx(&g_stdio_uart, &recv_char,1);
										  if(size > 0)
										  {

											  rx_char[index] = recv_char;
											  UART_send (&g_stdio_uart, (unsigned char *)&recv_char,sizeof(recv_char));
											  index++;
											  size = 0; // clear the rcvd flag
										  }
										}

									    rx_char_ptr = rx_char;
									    xatoi ( &rx_char_ptr, &input_data);
									    HW_set_16bit_reg(tx_sub_address,input_data);
									    tx_sub_address = tx_sub_address + 4;
									    recv_char = '-';  // DUMMY VALUE TO CHANGE THE DETECTION OF NEW LINE CHAR

						}


						}

					 }




		void change_bc_data(uint8_t msg_no){

							 uint32   bc_tx_dptr_address,mem_data;
							 uint32   tx_sub_address,rx_sub_address;

							 uint8 recv_char,size, index = 0;
							 uint32 input_data;

							 uint8   i,m;

							 for(index = 0; index < 10; index++)
							 		    {
							 		    	rx_char[index] = '0';
							 		    }
							 		    index = 0;


							 		   bc_tx_dptr_address  = (BC_BASE_ADDR + DATA_PTR_ADDR_TX_OFFSET) + (msg_no * 32);  // 32 location in each recieved/trsmtd data point area for each subaddr


							 dp_display_text("\n\r BC Message No: ");
							 dp_display_value(msg_no,DEC);
							 dp_display_text("   Enter New data ( eg: 0x10fe ,  1234, 0b1010110  \r\n");

							 for ( i=0; i <= 31 ;i++) {
								dp_display_text("\r\n");
								dp_display_value(i,DEC);
								dp_display_text("\t");
								dp_display_value(bc_tx_dptr_address,HEX);
								dp_display_text(":");
		 					    mem_data= HW_get_16bit_reg(bc_tx_dptr_address);
								dp_display_value(mem_data,HEX);
								dp_display_text("->");
								key = get_key_selection();
								if ( key == 27){  // ESC key == exit from writting
									return;
								}else if ( key == 13) // Return key, move to next address
								{
									bc_tx_dptr_address = bc_tx_dptr_address + 4;
								} else

								{
									rx_char[0] = key;  // put the previosly rxvd character to buffer;

							        index = 1;
											    while(recv_char != 13)  //'\n'
											    {
											      size = UART_get_rx(&g_stdio_uart, &recv_char,1);
												  if(size > 0)
												  {

													  rx_char[index] = recv_char;
													  UART_send (&g_stdio_uart, (unsigned char *)&recv_char,sizeof(recv_char));
													  index++;
													  size = 0; // clear the rcvd flag
												  }
												}

											    rx_char_ptr = rx_char;
											    xatoi ( &rx_char_ptr, &input_data);
											    HW_set_16bit_reg(bc_tx_dptr_address,input_data);
											    bc_tx_dptr_address = bc_tx_dptr_address + 4;
											    recv_char = '-';  // DUMMY VALUE TO CHANGE THE DETECTION OF NEW LINE CHAR

								}


								}

							 }



		void bc_memory_data(uint16_t addr){

									 uint32   bc_tx_dptr_address,mem_data;
									 uint32   tx_sub_address,rx_sub_address;

									 uint8 recv_char,size, index = 0;
									 uint32 input_data;

									 uint8   i,m;

									 for(index = 0; index < 10; index++)
									 		    {
									 		    	rx_char[index] = '0';
									 		    }
									 		    index = 0;


									 		   bc_tx_dptr_address  = (BC_BASE_ADDR + (addr & 0xfffc));  // 32 location in each recieved/trsmtd data point area for each subaddr


									 //dp_display_text("\n\r BC Message No: ");
									// dp_display_value(msg_no,DEC);
									// dp_display_text("   Enter New data ( eg: 0x10fe ,  1234, 0b1010110  \r\n");

									 for ( i=0; i <= 31 ;i++) {
										dp_display_text("\r\n");
									//	dp_display_value(i,DEC);
										dp_display_text("\t");
										dp_display_value(bc_tx_dptr_address,HEX);
										dp_display_text(":");
				 					    mem_data= HW_get_16bit_reg(bc_tx_dptr_address);
										dp_display_value(mem_data,HEX);
										dp_display_text("->");
										key = get_key_selection();
										if ( key == 27){  // ESC key == exit from writting
											return;
										}else if ( key == 13) // Return key, move to next address
										{
											bc_tx_dptr_address = bc_tx_dptr_address + 4;
										} else

										{
											rx_char[0] = key;  // put the previosly rxvd character to buffer;

									        index = 1;
													    while(recv_char != 13)  //'\n'
													    {
													      size = UART_get_rx(&g_stdio_uart, &recv_char,1);
														  if(size > 0)
														  {

															  rx_char[index] = recv_char;
															  UART_send (&g_stdio_uart, (unsigned char *)&recv_char,sizeof(recv_char));
															  index++;
															  size = 0; // clear the rcvd flag
														  }
														}

													    rx_char_ptr = rx_char;
													    xatoi ( &rx_char_ptr, &input_data);
													    HW_set_16bit_reg(bc_tx_dptr_address,input_data);
													    bc_tx_dptr_address = bc_tx_dptr_address + 4;
													    recv_char = '-';  // DUMMY VALUE TO CHANGE THE DETECTION OF NEW LINE CHAR

										}


										}

									 }



void display_rt_registers(uint32_t rt_adress){

	 uint32   rx_transfer_sts_address,tx_transfer_sts_address,mem_data,memory_address;
	 uint32   tx_sub_address,rx_sub_address,brt_sts_ctrl_address;

	 uint8   i,m;

				 memory_address  = rt_adress;  // 16 location from here onwards

				 rx_transfer_sts_address = rt_adress + BRT_RX_STATUS_WRD_BASE;
				 tx_transfer_sts_address = rt_adress + BRT_TX_STATUS_WRD_BASE;   //0x1080
				 brt_sts_ctrl_address = rt_adress + BRT_CONTROL_REG;


/*
				 dp_display_text("\n\r BRT RX Transfer Status Words\r\n");

				 for ( i=1; i <= 4 ;i++) {
					dp_display_text("\r\n");
					dp_display_value(i,DEC);
					dp_display_text("\t");
					dp_display_value(rx_transfer_sts_address,HEX);
					dp_display_text("\t");

					for (m=1; m <=8 ;m++){

					  mem_data= HW_get_16bit_reg(rx_transfer_sts_address);
					 dp_display_value(mem_data,HEX);
					 dp_display_text("\t");
					 rx_transfer_sts_address = rx_transfer_sts_address + 4;
					}

				 }


				 dp_display_text("\n\r BRT  TX transfer status words\r\n");


				 			 for ( i=1; i <= 4 ;i++) {
				 				dp_display_text("\r\n");
				 				dp_display_value(i,DEC);
				 				dp_display_text("\t");
				 				dp_display_value(tx_transfer_sts_address,HEX);
				 				dp_display_text("\t");

				 				for (m=1; m <=8 ;m++){

				 				  mem_data= HW_get_16bit_reg(tx_transfer_sts_address);
				 				 dp_display_value(mem_data,HEX);
				 				 dp_display_text("\t");
				 				tx_transfer_sts_address = tx_transfer_sts_address + 4;
				 				}

				 			 }
				 			 */


			dp_display_text("\n\r BRT  Control & Status Registers\r\n");


										 for ( i=0; i <= 15 ;i++) {
											dp_display_text("\r\n");
											dp_display_value(i,DEC);
											dp_display_text("\t");
											dp_display_value(brt_sts_ctrl_address,HEX);
											dp_display_text("\t");

											  mem_data= HW_get_16bit_reg(brt_sts_ctrl_address);
											 dp_display_value(mem_data,HEX);
											 dp_display_text("\t");
											 brt_sts_ctrl_address = brt_sts_ctrl_address + 4;
											}





}


