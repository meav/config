;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
alias=C:\Users\vhd\Desktop\Neovim\Neovim\ConEmuPack.180506\ConEmu.exe /Title NeoVim /Run nvim.exe -n -i NONE -u C:\Users\vhd\Desktop\Neovim\Neovim\plug\init.vim "C:\Users\vhd\Desktop\cmder\config\user_aliases.cmd"
e.=explorer .
gl=git log --graph --decorate=full --max-count=5 --source $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
cmderr=cd /d "%CMDER_ROOT%"
e=explorer $*
music=explorer "C:\Users\vhd\Music"
tondong=explorer "D:\Users\a\Music\WWW\1"
zip=explorer "C:\Users\vhd\Music\7-ZipPortable\7-ZipPortable.lnk"
cent=explorer "C:\Users\vhd\Music\centbrowser_3.4.3.39\chrome.exe"
facebook=explorer "C:\Users\vhd\Music\centbrowser_3.4.3.39\Facebook.lnk"
perfmonitor=explorer "C:\Users\vhd\Music\PerfMonZip\PerfMon.exe"
baidu=explorer C:\Users\vhd\AppData\Roaming\baidu\BaiduNetdisk\BaiduNetdisk.exe
txt="C:\Users\vhd\Music\npp.7.8.5.bin.minimalist\notepad++.exe" $*
ffmpegguide=C:\Users\vhd\Music\saldl-win32\saldl-win32.exe --resume --status-refresh-interval=1 --root-dir=C:\Users\vhd\Desktop --single "https://raw.githubusercontent.com/meav/text/master/FFMPEG/README.md"&echo.&type "C:\Users\vhd\Desktop\README.md"&del /Q "C:\Users\vhd\Desktop\README.md"
textoffline=C:\Users\vhd\Desktop\Neovim\Neovim\ConEmuPack.180506\ConEmu.exe /Title NeoVim /Run nvim.exe -n -i C:\Users\vhd\Desktop\Neovim\Neovim\plug\register\register.vim -u C:\Users\vhd\Desktop\Neovim\Neovim\plug\init.vim -S C:\Users\vhd\Desktop\Neovim\Neovim\plug\text.vim
textonline=C:\Users\vhd\Music\saldl-win32\saldl-win32.exe --resume --status-refresh-interval=1 --root-dir=C:\Users\vhd\Desktop --single "https://raw.githubusercontent.com/meav/meav.github.io/master/index.html"&C:\Users\vhd\Desktop\Neovim\Neovim\ConEmuPack.180506\ConEmu.exe /Title NeoVim /Run nvim.exe -n -i C:\Users\vhd\Desktop\Neovim\Neovim\plug\register\register.vim -u C:\Users\vhd\Desktop\Neovim\Neovim\plug\init.vim C:\Users\vhd\Desktop\index.html
rclone="C:\Users\vhd\Music\rclone-v1.51.0-windows-386\rclone.exe" $*
saldl=echo | set /p=C:\Users\vhd\Music\saldl-win32\saldl-win32.exe --resume --status-refresh-interval=1 --root-dir=C:\Users\vhd\Desktop --output-filename= --cookie-file= --single --connections=10 ""|clip&echo.&echo C:\Users\vhd\Music\saldl-win32\saldl-win32.exe --resume --status-refresh-interval=1 --root-dir=C:\Users\vhd\Desktop --output-filename= --cookie-file= --single --connections=10 ""
mpv.com=mpv $*
yt=youtube-dl $*
nodejs=explorer "C:\Users\vhd\Music\nodejs-portable\nodejs-portable.exe"
paint= explorer %windir%\system32\mspaint.exe
snipping=explorer %windir%\system32\SnippingTool.exe
bootice=explorer "C:\Users\vhd\Music\BOOTICE_2016.06.17_v1.3.4.0\BOOTICEx86_2016.06.17_v1.3.4.0.exe"
iso=explorer "C:\Users\vhd\Music\PowerISO 6.1\PowerISOPortable.exe"
goodbyedpi=explorer "C:\Users\vhd\Music\goodbyedpi-0.1.6"
uninstall=explorer "C:\Program Files\VS Revo Group\Revo Uninstaller Pro\RevoUninPro.exe"
nvim=C:\Users\vhd\Desktop\Neovim\Neovim\ConEmuPack.180506\ConEmu.exe /Title NeoVim /Run nvim.exe -n -i NONE -u C:\Users\vhd\Desktop\Neovim\Neovim\plug\init.vim $*
pdf="C:\Users\vhd\Music\PDF-XChangeViewerPortable\PDF-XChangeViewerPortable.exe" $*
aria2c="C:\Users\vhd\Desktop\aria2-1.35.0-win-32bit-build1\aria2c.exe" $*
checksum=powershell get-filehash -algorithm $*
desktop=explorer "C:\Users\vhd\Music\WW\desktop.vbs"
power=explorer "C:\Users\vhd\Music\WW\power.vbs"
