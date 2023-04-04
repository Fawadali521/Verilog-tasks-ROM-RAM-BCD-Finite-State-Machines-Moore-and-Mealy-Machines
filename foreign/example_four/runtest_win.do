
# Compilation and Execution Script for Windows

# NOTE: The environment variable MTI_HOME must be set to point to your
#       modeltech installation directory before invoking ModelSim.

# NOTE: This script is intended to be run from a ModelSim command line.
#       Example: ModelSim> do runtest_win.do

# Visual C/C++ compilation
catch {exec cl -c -I$env(MTI_HOME)/include foreignsp.c} msg
echo $msg
exec link -dll -export:in_params -export:out_params -export:incrInteger -export:incrReal -export:incrTime foreignsp.obj $env(MTI_HOME)/win32/mtipli.lib /out:foreignsp.sl

exec rm -rf work
vlib work
vcom foreignsp.vhd

vsim test -do vsim.do
