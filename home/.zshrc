export ZSH="/home/geoff/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
)

# fuzzy find
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# homeshick command
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $ZSH/oh-my-zsh.sh

[[ -e $HOME/.local-env.sh ]] && source $HOME/.local-env.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color
