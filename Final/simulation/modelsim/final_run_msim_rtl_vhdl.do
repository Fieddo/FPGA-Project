transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/fadia/OneDrive/Documents/Study/MIT/Sophomore Summer/UROP Prof. Marin/FPGA/Final/simulator.vhdl}
vcom -93 -work work {C:/Users/fadia/OneDrive/Documents/Study/MIT/Sophomore Summer/UROP Prof. Marin/FPGA/Final/th_checker.vhdl}

