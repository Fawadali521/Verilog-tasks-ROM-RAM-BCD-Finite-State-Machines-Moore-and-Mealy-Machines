
rem Compilation and Execution Script for Microsoft Windows Platforms

rem NOTE: This script is intended to be run in a DOS shell.

rem NOTE: The environment variable MTI_HOME must be set to point to your
rem       modeltech installation directory before invoking this script.
rem       Example: set MTI_HOME=\users\me\modeltech

set PLATFORM=win32

rem Visual C/C++ compilation
cl -c -I%MTI_HOME%\include dumpdes.c
link -dll -export:dump_design_init dumpdes.obj %MTI_HOME%\win32\mtipli.lib /out:dumpdes.sl
cl -c -I%MTI_HOME%\include gates.c
link -dll -export:and_gate_init gates.obj %MTI_HOME%\win32\mtipli.lib /out:gates.sl
cl -c -I%MTI_HOME%\include monitor.c
link -dll -export:monitor_init monitor.obj %MTI_HOME%\win32\mtipli.lib /out:monitor.sl

rm -rf work
%MTI_HOME%\%PLATFORM%\vlib work
%MTI_HOME%\%PLATFORM%\vcom foreign.vhd

%MTI_HOME%\%PLATFORM%\vsim testbench -do vsim.do
