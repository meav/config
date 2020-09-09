# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode zsh-autosuggestions zsh-syntax-highlighting globalias)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

path+=(~/bin)
export PATH

cd ~/data
ls -a --color=always

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'o' accept-line

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

hash -d vhd=/cygdrive/c/Users/vhd

alias rm='rm -i'
alias gl='git log --graph --decorate=full --source'
alias e=explorer
alias music='cygstart --show "C:\Users\vhd\Music"'
alias tondong='cygstart --show "D:\Users\a\Music\WWW\1"'
alias zip='cygstart --show "C:\Users\vhd\Music\7-ZipPortable\7-ZipPortable.lnk"'
alias cent='cygstart --show --show "C:\Users\vhd\Music\centbrowser_3.4.3.39\chrome.exe"'
alias facebook='cygstart --show "C:\Users\vhd\Music\centbrowser_3.4.3.39\Facebook.lnk"'
alias perfmonitor='cygstart --show "C:\Users\vhd\Music\PerfMonZip\PerfMon.exe"'
alias baidu='cygstart --show "C:\Users\vhd\AppData\Roaming\baidu\BaiduNetdisk\BaiduNetdisk.exe"'
alias ffmpegguide='echo && (wget -O- -q "https://raw.githubusercontent.com/meav/text/master/FFMPEG/README.md" | cat --number)'
alias mpv='mpv.com'
alias mpvcmd='cmd /k "C:\Users\vhd\Desktop\cygwin\cygwin\home\root\bin\mpv.com"'
alias yt=youtube-dl.exe
alias rclone=/cygdrive/c/Users/vhd/Music/rclone-v1.51.0-windows-386/rclone.exe
alias paint='cygstart --show "C:\Windows\system32\mspaint.exe"'
alias snipping='cygstart --show "C:\Windows\system32\SnippingTool.exe"'
alias bootice='cygstart --show "C:\Users\vhd\Music\BOOTICE_2016.06.17_v1.3.4.0\BOOTICEx86_2016.06.17_v1.3.4.0.exe"'
alias iso='cygstart --show "C:\Users\vhd\Music\PowerISO 6.1\PowerISOPortable.exe"'
alias goodbyedpi='cygstart --show "C:\Users\vhd\Music\goodbyedpi-0.1.6"'
alias uninstall='cygstart --show "C:\Program Files\VS Revo Group\Revo Uninstaller Pro\RevoUninPro.exe"'
alias pdf=/cygdrive/c/Users/vhd/Music/PDF-XChangeViewerPortable/PDF-XChangeViewerPortable.exe
alias winpath='cygpath -t windows'
alias desktop='cygstart --show "C:\Users\vhd\Music\WW\desktop.vbs"'
alias quit='rm --interactive=never ~/.zsh_history;cp ~/.zsh_history_base ~/.zsh_history;rm --interactive=never ~/.zcompdump-VHDX-5.8;rm --interactive=never ~/.zcompdump;exit'
alias power='rm --interactive=never ~/.zsh_history;cp ~/.zsh_history_base ~/.zsh_history;rm --interactive=never ~/.zcompdump-VHDX-5.8;rm --interactive=never ~/.zcompdump;explorer "C:\Users\vhd\Music\WW\power.vbs"'
alias message='cygstart --show "C:\Users\vhd\Desktop\cygwin\message.cmd"'
alias cygwin='cygstart --show "C:\Users\vhd\Desktop\cygwin\cygwin-portable.cmd"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

compdef _mpv mpv.com
function _mpv {
alias -g sdquatity='"bestvideo[height<=?500][fps<=?30][vcodec!=?vp9]+bestaudio/best[height<=?500]"'
    _arguments -C -s \
       '--title=[Title]' \
       '--ytdl-format[SD Quality]:SD Quality:(sdquatity)' \
#
    _tags files
    while _tags; do
      _requested files expl 'media file' _files && ret=0
      (( ret )) || return 0
    done
}

compdef _gohttpserver gohttpserver
function _gohttpserver {
    _arguments -C -s \
       '--port=80 --theme=green --upload --delete[Standard]' \
       '--help[Help]' \
       '--root=[Folder]:Folder:_files' \
}

compdef _curl curl
function _curl {
    _arguments -C -s \
       '-L -C - -o[File name]' \
       '--help[Help]' \
       '-b[Cookies file]:Cookies:_files' \
       '-x[protocol://user:password@address:port]' \
}
