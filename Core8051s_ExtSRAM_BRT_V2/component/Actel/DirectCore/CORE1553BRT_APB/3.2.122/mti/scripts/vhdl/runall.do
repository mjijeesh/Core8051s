

  vsim -t ps -GVERIF=1 CORE1553BRT_APB_LIB.TB_AMBA
  run -all
  vsim -t ps -GVERIF=2 CORE1553BRT_APB_LIB.TB_AMBA
  run -all
  vsim -t ps -GVERIF=3 CORE1553BRT_APB_LIB.TB_AMBA
  run -all
  vsim -t ps -GVERIF=4 CORE1553BRT_APB_LIB.TB_AMBA
  run -all
