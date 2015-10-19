@echo off

if not "%1" == "" goto before_command

echo "You must specify program to control"
goto end;

REM # _______________________________________BEFORE
:before_command
echo start [%1] %2 %3 %4 %5 %6 %7 %8 %9
TITLE %1
goto %1

REM # __________________________________________PHP
:php
cd %SRV_PATH%\php-5.6
start /B php-cgi.exe -b 24055 -c %SRV_PATH%\php-5.6\php.ini 
exit

REM # ________________________________________NGINX
:nginx
cd %SRV_PATH%\nginx-1.8.0
start /B nginx.exe %2 %3 %4 %5 %6 %7 %8 %9
exit

REM # ________________________________________MYSQL
:mysql
cd %SRV_PATH%\mysql-5.6\bin\
start /B mysqld.exe %2 %3 %4 %5 %6 %7 %8 %9
exit