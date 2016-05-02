# Created by Libero Project Manager 9.0.0.15
# Mon Jun 21 15:29:19 2010

# (NEW DESIGN)

# create a new design
new_design -name "FlashApb" -family "Fusion"

# set default back-annotation base-name
set_defvar "BA_NAME" "FlashApb_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Actelprj\AFS_ADV_KIT_8051\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "C:/Actelprj/AFS_ADV_KIT_8051/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "C:/Actelprj/AFS_ADV_KIT_8051/designer/impl1"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VHDL93"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "FlashApb.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VHDL" {../../synthesis/FlashApb.edn}

set_device -die "M1AFS1500" -package "484 FBGA"

set_defvar "BLOCK" "T"
set_defvar "ENABLE_BLOCK_MODE" "1"

puts "IDE_BEGINNING_OF_COMPILE"

compile
export -format "log" {C:\Actelprj\AFS_ADV_KIT_8051\synthesis\FlashApb_drc_temp.rpt}
