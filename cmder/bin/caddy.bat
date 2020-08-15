@echo off
for /f "tokens=14" %%a in ('ipconfig ^| findstr IPv4') do set _IPaddr=%%a
echo.
echo IP is: [92m%_IPaddr%[0m
echo.
caddy.exe -port 80 -root C:\Users\vhd\Desktop\meav.github.io\_site
