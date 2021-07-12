@echo off
:while
echo.
echo %date%
echo.
echo DDDDDDDDDDDDDDDDDDDDDDD[23A
time /t
echo.
set /p minute="Minutes: " %=%
if %minute%==quit (
goto :EOF )
set /A second=%minute% * 60
TIMEOUT /T %second%
msg * /time:120 " "
TIMEOUT /T 30
powershell (New-Object -ComObject WScript.Shell).SendKeys('{`}')
echo.
echo New loop
goto :while
