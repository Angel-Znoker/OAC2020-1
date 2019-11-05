transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/bufferDataBus.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/concatenador_entradas.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/registro_direccion.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/registro_instruccion.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Acumulador/acumulador.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Contador/contador.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Contador/contador_ID.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/flags/concatenador_datos.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/flags/registro.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/flags/divisor_datos.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/flags/mux1.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/flags/mux2.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/flags/mux3.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Interrupciones/ctrl_interrupciones.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/RAM/ram.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Secuenciador/logica_seleccion.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Secuenciador/memory.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Secuenciador/registro_MicroInst.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/Secuenciador/registro_sec.vhd}
vcom -93 -work work {C:/Users/angel/Documents/9no Semestre/oac/practicas/p7/UPA/upa.vhd}

