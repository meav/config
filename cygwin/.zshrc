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
plugins=(zsh-autosuggestions fast-syntax-highlighting globalias)

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

source ~/bin/vi-mode.zsh
source ~/bin/fzf-completion.zsh
source ~/bin/zsh-fzf-snippet.zsh

hash -d vhd=/cygdrive/c/Users/vhd

alias ls='ls --color=tty -a'
alias rm='rm -i'
alias gl='git log --graph --decorate=full --source'
alias e=explorer
alias music='explorer "C:\Users\vhd\Music"'
alias tondong='explorer "D:\Users\a\Music\WWW\1"'
alias zip='cmd.exe /c start "" explorer "C:\Users\vhd\Music\7-ZipPortable\7-ZipPortable.lnk"'
alias cent='cmd.exe /c start "" explorer "C:\Users\vhd\Music\centbrowser_3.4.3.39\chrome.exe"'
alias facebook='cmd.exe /c start "" explorer "C:\Users\vhd\Music\centbrowser_3.4.3.39\Facebook.lnk"'
alias perfmonitor='cmd.exe /c start "" explorer "C:\Users\vhd\Music\PerfMonZip\PerfMon.exe"'
alias baidu='cmd.exe /c start "" explorer "C:\Users\vhd\AppData\Roaming\baidu\BaiduNetdisk\BaiduNetdisk.exe"'
alias ffmpegguide='echo && (wget -O- -q "https://raw.githubusercontent.com/meav/text/master/FFMPEG/README.md" | cat --number)'
alias mpv='mpv.com'
alias yt=youtube-dl.exe
alias rclone=/cygdrive/c/Users/vhd/Music/rclone-v1.51.0-windows-386/rclone.exe
alias paint='cmd.exe /c start "" explorer "C:\Windows\system32\mspaint.exe"'
alias snipping='cmd.exe /c start "" explorer "C:\Windows\system32\SnippingTool.exe"'
alias bootice='cmd.exe /c start "" explorer "C:\Users\vhd\Music\BOOTICE_2016.06.17_v1.3.4.0\BOOTICEx86_2016.06.17_v1.3.4.0.exe"'
alias iso='cmd.exe /c start "" explorer "C:\Users\vhd\Music\PowerISO 6.1\PowerISOPortable.exe"'
alias goodbyedpi='explorer "C:\Users\vhd\Music\goodbyedpi-0.1.6"'
alias uninstall='explorer "C:\Program Files\VS Revo Group\Revo Uninstaller Pro\RevoUninPro.exe"'
alias pdf='explorer "C:\Users\vhd\Music\PDF-XChangeViewerPortable\PDF-XChangeViewerPortable.exe"'
alias gohttpserver='qrencode -t ANSIUTF8 http://$lanip; gohttpserver.exe --port=80 --theme=green --upload --delete'
alias curl='curl --location --continue-at -'
alias wget='wget --continue --progress=bar:force:noscroll'
alias aria2c='aria2c --max-concurrent-downloads=2 --continue --max-tries=0 --disk-cache=0 --download-result=full --file-allocation=trunc --summary-interval=0 --max-overall-download-limit=4M --split=5 --max-connection-per-server=5'
alias desktop='explorer "C:\Users\vhd\Music\WW\desktop.vbs"'
alias quit='rm --interactive=never ~/.zsh_history;cp ~/.zsh_history_base ~/.zsh_history;rm --interactive=never ~/.zcompdump-VHDX-5.8;rm --interactive=never ~/.zcompdump;exit'
alias power='rm --interactive=never ~/.zsh_history;cp ~/.zsh_history_base ~/.zsh_history;rm --interactive=never ~/.zcompdump-VHDX-5.8;rm --interactive=never ~/.zcompdump;explorer "C:\Users\vhd\Music\WW\power.vbs"'
alias message='explorer "C:\Users\vhd\Music\cygwin\message.cmd"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

compdef _mpv mpv.com
function _mpv {
    _arguments -C -s \
       '--title=[Title]'
    _files
}

compdef _gohttpserver gohttpserver.exe
function _gohttpserver {
    _arguments -C -s \
       '--help[Help]' \
       '--root=[Folder]:Folder:_files' \
}

compdef _curl curl
function _curl {
    _arguments -C -s \
       '--location[Accept redirect]:Redirect:_files' \
       '--continue-at[Continue]:Continue:_files' \
       '--output[File name]:Filename:_files' \
       '--help[Help]' \
       '--cookie[Cookies file]:Cookies:_files' \
       '--proxy[Proxy]:Proxy:_files' \
}

compdef _wget wget
function _wget {
    _arguments -C -s \
       '--continue[Continue]' \
       '--progress=[Progress]' \
       '--output-document=[File name]:Filenames:_files' \
       '--load-cookies[Cookies file]:Cookies:_files' \
       '--help[Help]' \
       '--execute[Command]:Command:_files' \
}

# --split=5 --max-connection-per-server=5 --max-concurrent-downloads=2 --continue --all-proxy=[http://][USER:PASSWORD@]HOST[:PORT] --max-tries=0 --disk-cache=0 --download-result=full --file-allocation=trunc --summary-interval=0 --max-overall-download-limit=4M  --version 
compdef _aria2c aria2c
function _aria2c {
    _arguments -C -s \
       '--load-cookies=[Cookies file]:Cookies:_files' \
       '--dry-run[Dry run]' \
       '--split=[Split]:Split:int' \
       '--max-connection-per-server=[Max connection per server]:maxconperserver:int' \
       '--max-concurrent-downloads=[Max concurrent download]:maxfiledown:int' \
       '--continue[Continue]' \
       '--all-proxy=[Proxy]' \
       '--max-tries=[Max tries]:maxtries:int' \
       '--disk-cache=[Disk cacke]:diskcache:int' \
       '--download-result=[Download result]:downresult:(full)' \
       '--file-allocation=[File allocation]:fileallocation:(trunc prealloc)' \
       '--summary-interval=[Update Status]:updatestatus:int' \
       '--max-overall-download-limit=[Max speed download]' \
       '--show-files[Torrent| Show files]' \
       '--seed-time=[Torrent| Time seed]:seedtime:int' \
       '--torrent-file=[Torrent| file]:torrentfile:_files' \
       '--version[Version]' \
       '--help[Help]' \
       '--out=[File name]:filesname:_files' \
       '--show-files --seed-time=0 --torrent-file=[Torrent]:torrentfile:_files' \
       '--select-file=1-5,8,9[Torrent| Select file]' \
}
