
rem Compilation and Execution Script for Microsoft Windows Platforms

rem NOTE: This script is intended to be run in a DOS shell.

rem NOTE: The environment variable MTI_HOME must be set to point to your
rem       modeltech installation directory before invoking this script.
rem       Example: set MTI_HOME=\users\me\modeltech

set PLATFORM=win32

rem Visual C/C++ compilation
cl -c -I%MTI_HOME%\include example1.c
link -dll -export:cif_init example1.obj %MTI_HOME%\%PLATFORM%\mtipli.lib /out:example1.sl

rm -rf work
%MTI_HOME%\%PLATFORM%\vlib work
%MTI_HOME%\%PLATFORM%\vcom example1.vhd

%MTI_HOME%\%PLATFORM%\vsim verification -do vsim.do
