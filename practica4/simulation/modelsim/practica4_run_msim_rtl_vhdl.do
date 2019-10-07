transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Ilse/Documents/OyA de computadoras/practica4/memoria.vhd}
vcom -93 -work work {C:/Users/Ilse/Documents/OyA de computadoras/practica4/registro.vhd}
vcom -93 -work work {C:/Users/Ilse/Documents/OyA de computadoras/practica4/regSalidas.vhd}
vcom -93 -work work {C:/Users/Ilse/Documents/OyA de computadoras/practica4/muxEntradas.vhd}
vcom -93 -work work {C:/Users/Ilse/Documents/OyA de computadoras/practica4/muxLiga.vhd}
vcom -93 -work work {C:/Users/Ilse/Documents/OyA de computadoras/practica4/muxSalida.vhd}

