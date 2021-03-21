# Variable
Set-Variable SCOOP C:\Users\VHDX\Music\scoop\persist

# PSreadline last character
Set-PSReadLineOption -prompttext "`e[1;32m> ", '> '

# Simple prompt
function prompt {
$(echo "`n") +
$(topprompt) + 
    $(if (Test-Path variable:/PSDebugContext) { '[DBG]: ' }
      else { '' }) + "`e[31mPS`e[37m " + $(Get-Location) +
        $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> '
}

# Top prompt
function topprompt { echo "`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`e[25A"}

# PSreadline vi-mode
Set-PSReadlineOption -EditMode vi
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key k -ViMode Command -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key j -ViMode Command -Function HistorySearchForward

# PSreadline vi-mode cursor
function OnViModeChange {
    if ($args[0] -eq 'Command') {
        Write-Host -NoNewLine "`e[4 q"
    } else {
        Write-Host -NoNewLine "`e[6 q"
    }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# PSreadline predict
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{ InlinePrediction = '#2F7004'}
Set-PSReadlineKeyHandler -Chord o -ViMode Command -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Chord "Ctrl+o" -Function ForwardWord

# Simple alias
Set-Alias -Name rclone -Value C:\Users\VHDX\Music\rclone-v1.54.0-windows-386\rclone.exe
function ghfs { Start-Process "C:\Users\VHDX\Music\ghfs\ghfs.bat"}
function iso { explorer "C:\Users\VHDX\Music\PowerISO 6.1\PowerISOPortable.exe"}
function cuesplitter { explorer "C:\Users\VHDX\Music\MedievalCUESplitterPortable\MedievalCUESplitterPortable.exe"}
function baidu { explorer "C:\Users\Administrator\AppData\Roaming\baidu\BaiduNetdisk\BaiduNetdisk.exe"}
function ezaudioconverter { explorer "C:\Users\VHDX\Music\EZ CD Audio Converter\EZCDPortable.exe"}
function picard { explorer "C:\Users\VHDX\Music\PicardPortable\PicardPortable.exe"}
function neovim { nvim "-new_console:n" -n -i NONE -u C:\Users\VHDX\Music\scoop\persist\nvim\init.vim $args}
function autosub { python "C:\Users\VHDX\Music\scoop\apps\python27\2.7.18\Scripts\autosub_app.py" $args}
function cent { explorer "C:\Users\VHDX\Music\centbrowser_3.4.3.39_portable\chrome.exe"}
function facebook { explorer "D:\Users\a\Music\centbrowser_4.1.7.182\Facebook.lnk"}
function goodbyedpi { explorer "C:\Users\VHDX\Music\goodbyedpi-0.1.6"}
function perfmon { explorer "C:\Users\VHDX\Music\PerfMonZip\PerfMon.exe"}
function timer { explorer "C:\Users\VHDX\Music\Timer\Timer.vbs"}
function desktop { explorer "D:\Users\a\Music\WW\desktop.vbs"}
function power { explorer "D:\Users\a\Music\WW\power.vbs"}
