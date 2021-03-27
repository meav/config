@echo off

for /f "tokens=14" %%a in ('ipconfig ^| findstr IPv4') do set _IPaddr=%%a

echo.

echo Address is: [92m%_IPaddr%[0m

echo.

cd C:\Users\a\Desktop
qrc_windows_386.exe http://%_IPaddr%
ghfs.exe --root C:\Users\a\Desktop --default-sort /n --global-upload --global-mkdir --global-delete --global-archive --global-cors --listen-plain 80 --error-log - --hide Outlook.lnk --hide Gmail.lnk --hide EVKey32.lnk --hide Power.lnk --hide desktop.ini --hide Thumbs.db