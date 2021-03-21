@echo off
set /p minute="Minutes: " %=%
if "%minute%"=="quit" ( goto :while ) else (
       if "%minute%"=="" ( explorer "C:\Users\VHDX\Music\Timer\Timer.vbs" ) )
:while
pwsh-preview.cmd -new_console:t:"pwsh preview":d:C:\Users\VHDX\Desktop
