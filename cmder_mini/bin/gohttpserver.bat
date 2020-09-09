@echo off

for /f "tokens=14" %%a in ('ipconfig ^| findstr IPv4') do set _IPaddr=%%a

echo.

echo Address is: [92m%_IPaddr%[0m

echo.

cd C:\Users\a\Desktop
qrc_windows_386.exe %_IPaddr%
gohttpserver.exe --port 80 --theme=green --upload --delete