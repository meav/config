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
cmd.exe /c start "" "C:\Users\a\Music\cmder_mini\bin\nircmdc.exe" win activate process ConEmu.exe
echo.
echo New loop
goto :while
