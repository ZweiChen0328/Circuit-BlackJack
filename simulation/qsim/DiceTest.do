onerror {exit -code 1}
vlib work
vlog -work work DiceTest.vo
vlog -work work Waveform6.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DiceTest_vlg_vec_tst -voptargs="+acc"
vcd file -direction DiceTest.msim.vcd
vcd add -internal DiceTest_vlg_vec_tst/*
vcd add -internal DiceTest_vlg_vec_tst/i1/*
run -all
quit -f
