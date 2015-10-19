@echo off

:web1
if "%1" == "web" set command_list=nginx mysql php

if "%command_list%" == "" echo Unknown server's set "%1"

for /F "tokens=1-6" %%a in ("%command_list%") do (
	if not "%%a" == "" start server %%a
	if not "%%b" == "" start server %%b
	if not "%%c" == "" start server %%c
	if not "%%d" == "" start server %%d
	if not "%%e" == "" start server %%e
	if not "%%f" == "" start server %%f
)

pause