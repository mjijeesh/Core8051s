# Created by Microsemi Libero Software 11.7.0.119
# Tue May 03 11:54:51 2016

# (NEW DESIGN)

# create a new design
new_design -name "memory_mux" -family "Fusion"
set_device -die {M1AFS1500} -package {484 FBGA} -speed {STD} -voltage {1.5} -IO_DEFT_STD {LVTTL} -RESERVEMIGRATIONPINS {1} -RESTRICTPROBEPINS {1} -RESTRICTSPIPINS {0} -TARGETDEVICESFORMIGRATION {IR10X10M3} -TEMPR {COM} -UNUSED_MSS_IO_RESISTOR_PULL {None} -VCCI_1.5_VOLTR {COM} -VCCI_1.8_VOLTR {COM} -VCCI_2.5_VOLTR {COM} -VCCI_3.3_VOLTR {COM} -VOLTR {COM}


# set default back-annotation base-name
set_defvar "BA_NAME" "memory_mux_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\proj\dev-kits\m1afs-adv-dev-kit\Core8051s-Core1553RT\Core8051s_ExtSRAM_BRT_V2\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "C:/proj/dev-kits/m1afs-adv-dev-kit/Core8051s-Core1553RT/Core8051s_ExtSRAM_BRT_V2/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "C:/proj/dev-kits/m1afs-adv-dev-kit/Core8051s-Core1553RT/Core8051s_ExtSRAM_BRT_V2/designer/impl1"

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
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VHDL" {../../synthesis/memory_mux.edn} \
-format "pdc"  {..\..\constraint\Core8051s_ExtSRAM_BRT.pdc}

# save the design database
save_design {memory_mux.adb}


compile
report -type "status" {memory_mux_compile_report.txt}
report -type "pin" -listby "name" {memory_mux_report_pin_byname.txt}
report -type "pin" -listby "number" {memory_mux_report_pin_bynumber.txt}

save_design
