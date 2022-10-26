onerror {quit -f}
vlib work
vlog -work work LAB04.vo
vlog -work work LAB04.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LAB04_vlg_vec_tst
vcd file -direction LAB04.msim.vcd
vcd add -internal LAB04_vlg_vec_tst/*
vcd add -internal LAB04_vlg_vec_tst/i1/*
add wave /*
run -all
