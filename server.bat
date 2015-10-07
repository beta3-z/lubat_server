@echo off

REM # BEGIN________________________________________
:begin
D:
if not "%1" == "" goto before_command

echo "You must specify program to control"
goto end;

REM # BEFORE_______________________________________
:before_command
echo [%1] %2 %3 %4 %5 %6 %7 %8 %9
TITLE %1

set command=%1

if "%2" == "stop" set command=%1_%2

goto %command%

REM # PHP__________________________________________
:php
cd D:\server\php-5.6
php-cgi.exe -b 24055 -c D:\server\php-5.5\php.ini
goto end

REM # NGINX________________________________________
:nginx
cd D:\server\nginx-1.8.0
nginx.exe %2 %3 %4 %5 %6 %7 %8 %9
goto end

:nginx_stop
cd D:\server\nginx-1.8.0
nginx.exe -s stop %3 %4 %5 %6 %7 %8 %9
goto end

REM # MYSQL________________________________________
:mysql
cd D:\server\mysql-5.6\bin\
mysqld.exe %2 %3 %4 %5 %6 %7 %8 %9
goto end

:mysql_stop
mysqladmin.exe shutdown -u root %3 %4 %5 %6 %7 %8 %9
goto end

REM # END__________________________________________
:end
pause