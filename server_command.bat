@echo off

if "%1" == "php" (
	set app_path=php-5.6
	set start_cmd=php-cgi.exe -b 24055 -c %SRV_PATH%\php-5.6\php.ini
	
) else if "%1" == "nginx" (
	set app_path=nginx-1.8.0
	set start_cmd=nginx.exe
	
) else if "%1" == "mysql" (
	set app_path=mysql-5.6\bin\
    set start_cmd=mysqld.exe
	
) else (
	echo "You must specify program to control"
	exit
)

cd %SRV_PATH%\%app_path%
start /B %start_cmd% %2 %3 %4 %5 %6 %7 %8 %9
exit