# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/meav/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
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
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(zsh-autosuggestions globalias zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=22"
ZSH_AUTOSUGGEST_STRATEGY=(history)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#c2c730,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#30942b,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#30942b,underline,bold'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#c2c730,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#30942b,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=#30942b,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=#30942b,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#30942b,bold'

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

path+=(/cygdrive/c/Users/Administrator/Music/mpv-x86_64-20210523-git-6c1dd02)
export PATH

export EDITOR="vim"

KEYTIMEOUT=1

cd ~/.data
ls -l -a --color=always

source ~/.bin/zsh/vi-mode.zsh
source ~/.bin/zsh/zsh-sticky-prompt.zshrc

hash -d ad=/cygdrive/c/Users/Administrator

zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*:matches'         group 'yes'
zstyle ':completion:*'                 group-name ''
zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS} "ma=48;5;106;1"
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'o' accept-line
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

alias ls='ls --color=tty -a'
alias rm='rm -i'
alias desktop='cmd /c start "" explorer "D:\Users\a\Music\WW\desktop.vbs"'
alias quit='rm --interactive=never ~/.zsh_history;cp /cygdrive/c/Users/Administrator/Music/GitHub/config/cygwin/.zsh_history_base ~/.zsh_history;rm --interactive=never ~/.zcompdump-DESKTOP-IF91IT1-5.8;rm --interactive=never ~/.zcompdump;exit'
alias power='echo 00:00:00 > ~/.timer;rm --interactive=never ~/.zsh_history;cp /cygdrive/c/Users/Administrator/Music/GitHub/config/cygwin/.zsh_history_base ~/.zsh_history;rm --interactive=never ~/.zcompdump-DESKTOP-IF91IT1-5.8;rm --interactive=never ~/.zcompdump;explorer "D:\Users\a\Music\WW\power.vbs"'
alias history='rm --interactive=never /cygdrive/c/Users/Administrator/Music/GitHub/config/cygwin/.zsh_history_base; cp ~/.zsh_history /cygdrive/c/Users/Administrator/Music/GitHub/config/cygwin/.zsh_history_base; vim /cygdrive/c/Users/Administrator/Music/GitHub/config/cygwin/.zsh_history_base'
alias timer='explorer "C:\Users\Administrator\Music\cygwin\timer.cmd"'
alias cent='cmd.exe /c start "" explorer "C:\Users\Administrator\Music\cent\chrome.exe"'
alias facebook='cmd.exe /c start "" explorer "C:\Users\Administrator\Music\cent\Facebook.lnk"'
alias githubdesktop='cmd.exe /c start "" explorer "C:\Users\Administrator\AppData\Local\GitHubDesktop\GitHubDesktop.exe"'
lanip=$(ipconfig | grep -m1 192.168 | awk '{print $14}' | tr -d '\r')
alias text='tmux source-file ~/.data/meav.github.io/text.tmux'
alias ghfs='qrencode -l H -t ANSIUTF8 http://$lanip:80; winpty /cygdrive/c/Users/Administrator/Music/GitHub/config/single\ binary/ghfs.exe --root "C:\Users\Administrator\Desktop" --default-sort /n --global-upload --global-mkdir --global-delete --global-archive --global-cors --listen-plain 80 --error-log - --theme "C:\Users\Administrator\Music\GitHub\config\single binary\Customtheme.zip"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
