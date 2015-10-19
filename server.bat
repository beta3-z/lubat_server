@echo off

D:
set SRV_PATH=D:\server\

if "%1" == "auto" goto auto
if "%1" == "stop" goto stop

goto command

:command
start server_command.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
exit

:stop
start server_stop.bat %2 %3 %4 %5 %6 %7 %8 %9
exit

:auto
start server_auto.bat %2 %3 %4 %5 %6 %7 %8 %9
exit