new_project \
    -name {Core8051s_ExtSRAM_BRT} \
    -location {C:\proj\dev-kits\m1afs-adv-dev-kit\Core8051s-Core1553RT\Core8051s_ExtSRAM_BRT_V2\designer\impl1\Core8051s_ExtSRAM_BRT_fp} \
    -mode {single}
set_programming_file -file {C:\proj\dev-kits\m1afs-adv-dev-kit\Core8051s-Core1553RT\Core8051s_ExtSRAM_BRT_V2\designer\impl1\Core8051s_ExtSRAM_BRT.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project
