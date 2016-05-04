//**********************************************************************
// This code was created by SoC Solutions and is free for use with     *
// Actel products.  For support e-mail support@socsolutions.com.       *
//**********************************************************************

#ifndef INC_DPUSER_H
#define INC_DPUSER_H


#define DONT_CARE           1

typedef unsigned            uint32;
typedef unsigned short      uint16;
typedef unsigned char       uint8;

typedef uint32              genAddress;		// The generic address bus
typedef uint32              genData;		// The generic data bus

typedef char			    sint8;

#define PUT_UINT32(addr, data)    (*((volatile uint32 *) (addr)) = (data))
#define PUT_UINT16(addr, data)    (*((volatile uint16 *) (addr)) = (data))
#define PUT_UINT8(addr,  data)    (*((volatile uint8  *) (addr)) = (data))

#define GET_UINT32(addr, pData)   (*(pData) = *((volatile uint32 *) (addr)))
#define GET_UINT16(addr, pData)   (*(pData) = *((volatile uint16 *) (addr)))
#define GET_UINT8(addr,  pData)   (*(pData) = *((volatile uint8  *) (addr)))


/*************** Hardware related constants *****************************/
/*
* User Attention:
* Bit assignments in the hardware JTAG port register
*
*/

/*  CoreGPIO at Slot S2 on APB bus is used for JTAG signals,
 * GPIO[0]   --- TDO   -- Input
 * GPIO[1]   --- TCK   -- Output
 * GPIO[2]   --- TDI   -- Output
 * GPIO[3]   --- TMS   -- Output
 * GPIO[4]   --- TRST  -- Output
 */



/*************** End of hardware related constants ************************/


/***********************************************/
/* DPCHAR    -- 8-bit Windows (ANSI) character */
/*              i.e. 8-bit signed integer      */
/* DPINT     -- 16-bit signed integer          */
/* DPLONG    -- 32-bit signed integer          */
/* DPBOOL    -- boolean variable (0 or 1)      */
/* DPUCHAR   -- 8-bit unsigned integer         */
/* DPUSHORT  -- 16-bit unsigned integer        */
/* DPUINT    -- 16-bit unsigned integer        */
/* DPULONG   -- 32-bit unsigned integer        */
/***********************************************/
typedef unsigned char  DPUCHAR;
typedef unsigned short DPUSHORT;
typedef unsigned int   DPUINT;
typedef unsigned long  DPULONG;
typedef unsigned char  DPBOOL;
typedef   signed char  DPCHAR;
typedef   signed int   DPINT;
typedef   signed long  DPLONG;

#define DPNULL ((void*)0)
#define TRUE 1U
#define FALSE 0U

#define GPIO_SEL 1u
#define IAP_SEL 2u


extern DPUCHAR *image_buffer;
extern DPUCHAR hardware_interface;
extern DPUCHAR enable_mss_support;

DPUCHAR jtag_inp(void);
void jtag_outp(DPUCHAR outdata);
void dp_jtag_init(void);
void dp_jtag_tms(DPUCHAR tms);
void dp_jtag_tms_tdi(DPUCHAR tms, DPUCHAR tdi);
DPUCHAR dp_jtag_tms_tdi_tdo(DPUCHAR tms, DPUCHAR tdi);
void dp_delay(DPULONG microseconds);
int dp_main();

DPUINT int_to_hex_int( DPUINT value, DPUCHAR * p_result, DPUINT result_size );
DPUINT int_to_dec_int(DPUINT value, DPUCHAR * p_result);


#define HEX 0u
#define DEC 1u
#define CHR 2u

/******************************************************************************/
/* users should define their own functions to replace the following functions */
/******************************************************************************/
void dp_display_text(uint8_t *text);
void dp_display_value(DPULONG value,DPUINT descriptive);
void dp_display_array(DPUCHAR *value,DPUINT bytes, DPUINT descriptive);
int xatoi (                                             /* 0:Failed, 1:Successful */
		       uint8  **str,                          /* Pointer to pointer to the string */
		       uint32  *res                             /* Pointer to the valiable to store the value */
);
uint8_t  getParity(unsigned int n);

#endif /* INC_DPUSER_H */






