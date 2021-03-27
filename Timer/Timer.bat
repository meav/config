:while

setlocal EnableExtensions DisableDelayedExpansion
for /F "tokens=2 delims==." %%I in ('%SystemRoot%\System32\wbem\wmic.exe OS GET LocalDateTime /VALUE') do set "LocalDateTime=%%I"
set "LocalHour=%LocalDateTime:~8,2%"
set "AM_PM=AM"
if %LocalHour% LSS 12 goto CopyTime
set "AM_PM=PM"
if %LocalHour% GTR 12 set /A LocalHour-=12
set "LocalHour=0%LocalHour%"
set mytime=%LocalHour:~-2%:%LocalDateTime:~10,2% %AM_PM%

del /F "C:\Users\VHDX\Music\config\Timer\HourglassPortable.config"
start "" /MIN "C:\Users\VHDX\Music\config\Timer\focus.bat"
"C:\Users\VHDX\Music\config\Timer\HourglassPortable.exe" --title "%mytime%" --always-on-top off --full-screen off --prompt-on-exit on --show-in-notification-area off --do-not-keep-awake off --show-time-elapsed off --loop-timer off --pop-up-when-expired on --close-when-expired on --shut-down-when-expired off --theme gray --sound none --loop-sound off --open-saved-timers off --window-title left --window-state normal --lock-interface off --window-bounds 20,20,3500,1500
"C:\Users\VHDX\Music\config\Timer\HourglassPortable.exe" --always-on-top on --full-screen off --prompt-on-exit on --show-in-notification-area off --do-not-keep-awake off --show-time-elapsed off --loop-timer off --pop-up-when-expired on --close-when-expired on --shut-down-when-expired off --theme purple --sound none --loop-sound off --open-saved-timers off --window-title left --window-state normal --lock-interface off --window-bounds 20,20,3500,1500 150s
"C:\Users\VHDX\Music\config\Timer\HourglassPortable.exe" --always-on-top on --full-screen off --prompt-on-exit on --show-in-notification-area off --do-not-keep-awake off --show-time-elapsed off --loop-timer off --pop-up-when-expired on --close-when-expired on --shut-down-when-expired off --theme green --sound none --loop-sound off --open-saved-timers off --window-title left --window-state normal --lock-interface off --window-bounds 20,20,3500,1500 30s
goto :while
