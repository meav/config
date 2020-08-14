@echo off
chcp 65001
echo.
cmd /d /c ver | "%windir%\system32\find.exe" "Windows"
set PATH=%PATH%;C:\Users\vhd\Desktop;C:\Users\vhd\Music\mpv-i686-20200329-git-bca917f;A:\bin
