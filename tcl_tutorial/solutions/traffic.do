if {![file exists work]} {
     vlib work
}
vcom ../vhdl/traffic.vhd ../vhdl/queue.vhd ../vhdl/tb_traffic.vhd
source intersection.tcl 
draw_intersection
set_light_state green .traffic.i.ns_light
set_light_state green .traffic.i.ew_light
vmap work work
vsim  tb_traffic
source lights.tcl 
connect_lights
source queues.tcl 
draw_queues
source controls.tcl 
draw_controls

