# Created by Libero Project Manager 9.1.5.1
# Wed Sep 23 11:31:02 2015

# (NEW DESIGN)

# create a new design
new_design -name "memory_mux" -family "Fusion"

# set default back-annotation base-name
set_defvar "BA_NAME" "memory_mux_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\jijeesh\Reference\Core8051\Core8051_Core1553RT\External_Flash-Example\Core8051_Ext_SRAM_Int_XData\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "D:/jijeesh/Reference/Core8051/Core8051_Core1553RT/External_Flash-Example/Core8051_Ext_SRAM_Int_XData/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "D:/jijeesh/Reference/Core8051/Core8051_Core1553RT/External_Flash-Example/Core8051_Ext_SRAM_Int_XData/designer/impl1"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VHDL93"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "memory_mux.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VHDL" {../../synthesis/memory_mux.edn}

set_device -die "M1AFS1500" -package "484 FBGA"

set_defvar "BLOCK" "T"
set_defvar "ENABLE_BLOCK_MODE" "1"

puts "IDE_BEGINNING_OF_COMPILE"

compile
export -format "log" {D:\jijeesh\Reference\Core8051\Core8051_Core1553RT\External_Flash-Example\Core8051_Ext_SRAM_Int_XData\synthesis\memory_mux_drc_temp.rpt}
