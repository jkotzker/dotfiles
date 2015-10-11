# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallifrey"

# Auto-update (in days).
# export UPDATE_ZSH_DAYS=5

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

#timestamp format in history
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras github forklift atom brew brew-cask osx python pip torrent adb sublime common-aliases)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/sbin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# add git-radar prompt
export PROMPT="%1/%$(git-radar --zsh --fetch) "

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Personal aliases

alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;echo 'DNS cache flushed.'"
alias runscripts="sudo periodic daily weekly monthly"
#alias reperms="sudo diskutil repairPermissions /"
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias mounted="mount | column -t"
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias imgur-screenshot='imgur-screenshot.sh'
