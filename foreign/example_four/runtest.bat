
rem Compilation and Execution Script for Microsoft Windows Platforms

rem NOTE: This script is intended to be run in a DOS shell.

rem NOTE: The environment variable MTI_HOME must be set to point to your
rem       modeltech installation directory before invoking this script.
rem       Example: set MTI_HOME=\users\me\modeltech

set PLATFORM=win32

rem Visual C/C++ compilation
cl -c -I%MTI_HOME%\include foreignsp.c
link -dll -export:in_params -export:out_params -export:incrInteger -export:incrReal -export:incrTime foreignsp.obj %MTI_HOME%\win32\mtipli.lib /out:foreignsp.sl

rm -rf work
%MTI_HOME%\%PLATFORM%\vlib work
%MTI_HOME%\%PLATFORM%\vcom foreignsp.vhd

%MTI_HOME%\%PLATFORM%\vsim test -do vsim.do
