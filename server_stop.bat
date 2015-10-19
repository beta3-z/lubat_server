@echo off

if "%1" == "nginx" (
	set app_path=nginx-1.8.0
	set stop_cmd=nginx.exe -s stop
	
) else if "%1" == "mysql" (
	set app_path=mysql-5.6\bin\
    set stop_cmd=mysqladmin.exe shutdown -u root
	
) else (
	echo "You must specify program to control"
	exit
)

cd %SRV_PATH%\%app_path%
start /I /B %stop_cmd% %2 %3 %4 %5 %6 %7 %8 %9
exit