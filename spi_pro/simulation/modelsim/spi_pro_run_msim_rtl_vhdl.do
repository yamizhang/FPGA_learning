transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Quartus II 12.0/Project/spi_pro/show_part.vhd}
vcom -93 -work work {F:/Quartus II 12.0/Project/spi_pro/spi_pro.vhd}
vcom -93 -work work {F:/Quartus II 12.0/Project/spi_pro/rx_part.vhd}
vcom -93 -work work {F:/Quartus II 12.0/Project/spi_pro/tx_part.vhd}

vcom -93 -work work {F:/Quartus II 12.0/Project/spi_pro/simulation/modelsim/spi_pro.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone -L rtl_work -L work -voptargs="+acc"  spi_pro_vhd_tst

add wave *
view structure
view signals
run 100000ps
