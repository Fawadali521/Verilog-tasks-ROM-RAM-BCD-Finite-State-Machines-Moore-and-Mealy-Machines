
rem Compilation and Execution Script for Microsoft Windows Platforms

rem NOTE: This script is intended to be run in a DOS shell.

rem NOTE: The environment variable MTI_HOME must be set to point to your
rem       modeltech installation directory before invoking this script.
rem       Example: set MTI_HOME=\users\me\modeltech

set PLATFORM=win32

rem Visual C/C++ compilation
cl -c -I%MTI_HOME%\include tester.c
link -dll -export:tester_init tester.obj %MTI_HOME%\win32\mtipli.lib /out:tester.sl

rm -rf work
%MTI_HOME%\%PLATFORM%\vlib work
%MTI_HOME%\%PLATFORM%\vcom xcvr.vhd
%MTI_HOME%\%PLATFORM%\vcom tester.vhd
%MTI_HOME%\%PLATFORM%\vcom test_circuit.vhd

%MTI_HOME%\%PLATFORM%\vsim testbed -do vsim.do
