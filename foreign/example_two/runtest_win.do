
# Compilation and Execution Script for Windows

# NOTE: The environment variable MTI_HOME must be set to point to your
#       modeltech installation directory before invoking ModelSim.

# NOTE: This script is intended to be run from a ModelSim command line.
#       Example: ModelSim> do runtest_win.do

# Visual C/C++ compilation
catch {exec cl -c -I$env(MTI_HOME)/include dumpdes.c} msg
echo $msg
exec link -dll -export:dump_design_init dumpdes.obj $env(MTI_HOME)/win32/mtipli.lib /out:dumpdes.sl
catch {exec cl -c -I$env(MTI_HOME)/include gates.c} msg
echo $msg
exec link -dll -export:and_gate_init gates.obj $env(MTI_HOME)/win32/mtipli.lib /out:gates.sl
catch {exec cl -c -I$env(MTI_HOME)/include monitor.c} msg
echo $msg
exec link -dll -export:monitor_init monitor.obj $env(MTI_HOME)/win32/mtipli.lib /out:monitor.sl

exec rm -rf work
vlib work
vcom foreign.vhd

vsim testbench -do vsim.do
