
# Compilation and Execution Script for Windows NT/95/98

# NOTE: The environment variable MTI_HOME must be set to point to your
#       modeltech installation directory before invoking ModelSim.

# NOTE: This script is intended to be run from a ModelSim command line.
#       Example: ModelSim> do runtest_win.do

# Visual C/C++ compilation
catch {exec cl -c -I$env(MTI_HOME)/include tester.c} msg
echo $msg
exec link -dll -export:tester_init tester.obj $env(MTI_HOME)/win32/mtipli.lib /out:tester.sl

exec rm -rf work
vlib work
vcom xcvr.vhd
vcom tester.vhd
vcom test_circuit.vhd

vsim testbed -do vsim.do
