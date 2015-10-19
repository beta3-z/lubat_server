@echo off

D:
set SRV_PATH=D:\server\

if "%1" == "auto" (
	set bat_name=server_auto.bat
) else if "%1" == "stop" (
	set bat_name=server_stop.bat
) else (
	start server_command.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
	exit
)

start /B %bat_name% %2 %3 %4 %5 %6 %7 %8 %9