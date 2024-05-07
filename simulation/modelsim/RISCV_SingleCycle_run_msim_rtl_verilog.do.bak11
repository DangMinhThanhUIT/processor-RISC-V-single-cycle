transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/RISCV_SingleCycle.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/RegisterFile.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/ImmediateGenerator.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/Mux21_32bit.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/ControlUnit.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/Datapath.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/ALU2.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/ALUControl2.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/DataMemory2.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/PC.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/BranchComp.v}
vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/FullDatapath.v}

vlog -vlog01compat -work work +incdir+D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle {D:/mon_dai_hoc/nam3/TKHTS_HDL/RISCV_SingleCycle/RISCV_SingleCycle_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  RISCV_SingleCycle_testbench

add wave *
view structure
view signals
run -all
