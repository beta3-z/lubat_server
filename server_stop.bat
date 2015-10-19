@echo off

REM # BEGIN________________________________________
:begin
D:
if not "%1" == "" goto %1

echo "You must specify program to control"
goto end;

REM # ________________________________________NGINX
:nginx
cd %SRV_PATH%\nginx-1.8.0
nginx.exe -s stop %2 %3 %4 %5 %6 %7 %8 %9
goto end

REM # ________________________________________MYSQL
:mysql
cd %SRV_PATH%\mysql-5.6\bin
mysqladmin.exe shutdown -u root %2 %3 %4 %5 %6 %7 %8 %9
goto end

REM # END__________________________________________
:end
pause