
The Core8051s Design runs on a 6Mhz clock.
CoreUART 9600 Baud value is 38

Make sure that the SDCC assemble is added to the toll chain editor for the 
HAL files to workd properly.

This project is modified to downlaod on the external Flash memory.

Add the following on the Actel-Map generator tab on the project settings.

actel-map -M ./intel-28f640-1x8-code-memory.txt

Make sure taht the board uses the same external Flash memroy as mentioned. 
The above mentioend flash memroy is on the m1afd-adv-dev-kit.


The design also needs to be modified to use the Flash memory as the program memory 
This can be done in the memory_mux.vhd file

do the following modification to use flash as the program memory

FLASH_CEn     <= '0'; -- This will enable the Flash memory Cs

Optionally disable SRAm chip enable
SRAM_CEn1    <= '1'; -- active Low Chip Enable
SRAM_CE2     <= '0'; -- active high chip enable
 


2nd May 2016
