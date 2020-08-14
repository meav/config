@echo off
:while
echo.
echo %date%
echo.
time /t
echo.
set /p minute="Minutes: " %=%
set /A second=%minute% * 60
TIMEOUT /T %second%
msg * /time:180 " "
echo.
echo New loop
goto :while
