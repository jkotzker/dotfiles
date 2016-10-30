# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/.oh-my-zsh

# Themes in ~/.oh-my-zsh/themes/, or oh-my-zsh themes dir
ZSH_THEME="fishy"
# ZSH_THEME="punctual"

# Autoupdate freq in days
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Self explanatory, indicates waiting for completion
COMPLETION_WAITING_DOTS="true"

# Shell plugins to load, in custom dir or main plugins dir
plugins=(git git-extras github forklift atom brew brew-cask osx python pip torrent common-aliases my_common_aliases)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/josephkotzker/.dotfiles/bin:/usr/macbin"
export PATH="$PATH:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/opt/findutils/libexec/gnubin"
export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"

source $ZSH/oh-my-zsh.sh


build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_context
  prompt_dir
  prompt_end
}

## export PROMPT="$PROMPT\$(git-radar --zsh --fetch) "



# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## eval "$(perl -I "$HOME/.perl5/lib/perl5" -Mlocal::lib)"

# VirtualENV config for Python
export WORKON_HOME=~/.Envs
source /usr/local/bin/virtualenvwrapper.sh
