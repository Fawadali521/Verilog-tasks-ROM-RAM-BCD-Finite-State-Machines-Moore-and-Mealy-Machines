
# Compilation and Execution Script for Microsoft Windows Platforms

# NOTE: The environment variable MTI_HOME must be set to point to your
#       modeltech installation directory before invoking ModelSim.

# NOTE: This script is intended to be run from a ModelSim command line.
#       Example: ModelSim> do runtest_win.do

# Visual C/C++ compilation
catch {exec cl -c -I$env(MTI_HOME)/include example1.c} msg
echo $msg
exec link -dll -export:cif_init example1.obj $env(MTI_HOME)/win32/mtipli.lib /out:example1.sl

exec rm -rf work
vlib work
vcom example1.vhd

vsim verification -do vsim.do
