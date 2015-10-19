@echo off

if "%command_list%" == "" echo Unknown server's set "%1"
if "%1" == "web" (
	set command_list=nginx mysql php
) else (
	echo Unknown server's set "%1"
	pause
	exit
)

for /F "tokens=1-6" %%a in ("%command_list%") do (
	if not "%%a" == "" start /I /B server %%a
	if not "%%b" == "" start /I /B server %%b
	if not "%%c" == "" start /I /B server %%c
	if not "%%d" == "" start /I /B server %%d
	if not "%%e" == "" start /I /B server %%e
	if not "%%f" == "" start /I /B server %%f
)