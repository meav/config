;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl
alias=notepad "C:\Users\a\Music\cmder_mini\config\user_aliases.cmd"
e=explorer $*
thtuliem=explorer "C:\Users\a\Music\FreeCommanderXE\ThTuliem.lnk"
fc="C:\Users\a\Music\FreeCommanderXE\FreeCommander.exe" /R=$*
phanmem=explorer "C:\Users\a\Music\FreeCommanderXE\Phanmem.lnk"
music=explorer "C:\Users\a\Music\FreeCommanderXE\Music.lnk"
ebook=explorer "C:\Users\a\Music\FreeCommanderXE\Ebook.lnk"
zip=explorer "C:\Users\a\Music\7-ZipPortable\Zip.lnk"
zipphanmem=explorer "C:\Users\a\Music\7-ZipPortable\Zipphanmem.lnk"
gmail=explorer "C:\Users\a\Music\centbrowser_4.1.7.182\Mail.lnk"
tiengviet=explorer "C:\Users\a\Desktop\EVKey32.lnk"
mail=explorer "C:\Users\a\Music\SylpheedPortable\SylpheedPortable.exe"
rclone=C:\Users\a\Music\rclone-v1.49.3-windows-386\rclone.exe $*
pdf=explorer "C:\Users\a\Music\PDF-XChangeViewerPortable\PDF-XChangeViewerPortable.exe"
word=explorer "C:\Users\a\Music\cmder_mini\Word.lnk"
excel=explorer "C:\Program Files\Microsoft Office\Office14\EXCEL.EXE"
close=explorer "C:\Users\a\Music\WW\close.vbs"
desktop=explorer "C:\Users\a\Music\WW\desktop.vbs"
power=explorer "C:\Users\a\Music\WW\power.vbs"