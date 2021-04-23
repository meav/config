# Variable
Set-Variable CONFIG C:\Users\VHDX\Music\config

# Simple prompt
# function prompt {
# $(echo "`n") +
# $(topprompt) + 
#     $(if (Test-Path variable:/PSDebugContext) { '[DBG]: ' }
#       else { '' }) + "`e[31mPS`e[0m " + $(Get-Location) +
#         $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> '
# }

# Starship
Invoke-Expression (&starship init powershell)

# PSreadline last character
Set-PSReadLineOption -prompttext "`e[1;32m ", ' '

# Top prompt
function topprompt { echo "`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`e[25A"}

$ENV:TOPPROMPT = $(topprompt)

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
Set-PSReadLineOption -Colors @{ InlinePrediction = "Yellow"}
Set-PSReadlineKeyHandler -Chord o -ViMode Command -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Chord "Ctrl+o" -Function ForwardWord

# PSreadline history path
Set-PSReadLineOption -HistorySavePath C:\Users\VHDX\Documents\PowerShell\ConsoleHost_history.txt

# Posh-with
Import-Module posh-with
function global:Write-WithPrompt()
{
    param(
        [string]
        $command
    )
    Write-Host " Posh-With" -ForegroundColor Red -NoNewline
    $withprompt = $(prompt).substring(1) -replace ""
    $withprompt = $withprompt -replace ".$"
    Write-Host $withprompt -NoNewLine
#
#    $currentPath = (get-location).Path.replace($home, "~")
#    $idx = $currentPath.IndexOf("::")
#    if ($idx -gt -1) { $currentPath = $currentPath.Substring($idx + 2) }
#    $host.UI.RawUI.WindowTitle=$currentPath
#    Write-Host "$currentPath " -NoNewline
#
    Write-Host $command -ForegroundColor Green -NoNewline
    Write-Host "  " -ForegroundColor Green -NoNewline
}

# Posh-git
Import-Module posh-git

# Powershell color
$host.ui.rawui.ForegroundColor = "Green"
$host.ui.rawui.BackgroundColor = "Black"
$Host.PrivateData.ErrorForegroundColor = "DarkRed"
$Host.PrivateData.WarningForegroundColor = "DarkYellow"
$Host.PrivateData.DebugForegroundColor = "DarkYellow"
$Host.PrivateData.VerboseForegroundColor = "DarkYellow"
$Host.PrivateData.ProgressForegroundColor = "Yellow"
$Host.PrivateData.ProgressBackgroundColor = "DarkGray"

# PSreadline color
Set-PSReadLineOption -Colors @{
  Command = 'DarkBlue'
  Comment = 'Yellow'
  ContinuationPrompt = 'Green'
  Emphasis = 'DarkCyan'
  Error = 'DarkRed'
  Keyword = 'DarkMagenta'
  Member = 'White'
  Number = 'White'
  Operator = 'Green'
  Parameter = 'Blue'
  String = 'DarkGreen'
  Type = 'DarkMagenta'
  Variable = 'Red'
}

# ghfs
function gohttpfileserver {
$localIpAddress=((ipconfig | findstr [0-9].\.)[0]).Split()[-1]
Write-Host "`n"
Write-Host $localIpAddress -ForegroundColor Green
qrc_windows_386.exe -i http://$localIpAddress
ghfs.exe --root C:\Users\VHDX\Desktop --default-sort /n --global-upload --global-mkdir --global-delete --global-archive --global-cors --listen-plain 80 --error-log - --hide Outlook.lnk --hide Gmail.lnk --hide EVKey32.lnk --hide Power.lnk --hide desktop.ini --hide Thumbs.db --theme "C:\Users\VHDX\Music\config\single binary\Customtheme.zip"
}

# browsersync
function browsersyncserver {
$localIpAddress=((ipconfig | findstr [0-9].\.)[0]).Split()[-1]
Write-Host "`n"
Write-Host $localIpAddress -ForegroundColor Green
qrc_windows_386.exe -i http://$localIpAddress
browsersync.exe -p 80
}

# Simple alias
Set-Alias -Name rclone -Value C:\Users\VHDX\Music\rclone-v1.54.0-windows-386\rclone.exe
Set-Alias -Name ghfs -Value gohttpfileserver
Set-Alias -Name browsersync -Value browsersyncserver
function iso { explorer "C:\Users\VHDX\Music\PowerISO 6.1\PowerISOPortable.exe"}
function cuesplitter { explorer "C:\Users\VHDX\Music\MedievalCUESplitterPortable\MedievalCUESplitterPortable.exe"}
function baidu { explorer "C:\Users\Administrator\AppData\Roaming\baidu\BaiduNetdisk\BaiduNetdisk.exe"}
function ezaudioconverter { explorer "C:\Users\VHDX\Music\EZ CD Audio Converter\EZCDPortable.exe"}
function picard { explorer "C:\Users\VHDX\Music\PicardPortable\PicardPortable.exe"}
function neovim { nvim "-new_console:n" -n -i NONE -u C:\Users\VHDX\Music\config\nvim\init.vim $args}
function autosub { python "C:\Users\VHDX\scoop\apps\python27\2.7.18\Scripts\autosub_app.py" $args}
function cent { explorer "C:\Users\VHDX\Music\centbrowser_3.4.3.39_portable\chrome.exe"}
function facebook { explorer "D:\Users\a\Music\centbrowser_4.1.7.182\Facebook.lnk"}
function goodbyedpi { explorer "C:\Users\VHDX\Music\goodbyedpi-0.1.6"}
function perfmon { explorer "C:\Users\VHDX\Music\PerfMonZip\PerfMon.exe"}
function timer { explorer "C:\Users\VHDX\Music\config\Timer\Timer.vbs"}
function desktop { explorer "D:\Users\a\Music\WW\desktop.vbs"}
function newhistory { Remove-Item -Path C:\Users\VHDX\Music\config\powershell\ConsoleHost_history_base.txt && Copy-Item C:\Users\VHDX\Documents\PowerShell\ConsoleHost_history.txt -Destination C:\Users\VHDX\Music\config\powershell\ConsoleHost_history_base.txt && neovim C:\Users\VHDX\Music\config\powershell\ConsoleHost_history_base.txt}
function power { Remove-Item -Path C:\Users\VHDX\Documents\PowerShell\ConsoleHost_history.txt && Copy-Item C:\Users\VHDX\Music\config\powershell\ConsoleHost_history_base.txt -Destination C:\Users\VHDX\Documents\PowerShell\ConsoleHost_history.txt && explorer "D:\Users\a\Music\WW\power.vbs"}
