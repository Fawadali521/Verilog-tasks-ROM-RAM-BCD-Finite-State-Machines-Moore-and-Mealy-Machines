vlib work
vmap work work
vlog cache.v memory.v proc.v
vcom util.vhd set.vhd top.vhd
vsim -wlf gold.wlf work.top
add wave *
onbreak {resume}
run -all
quit -sim
