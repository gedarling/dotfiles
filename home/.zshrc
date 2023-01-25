export ZSH="/home/geoff/.oh-my-zsh"

# blank since we are using pure instead of a oh-my-zsh theme
ZSH_THEME=""

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
)

# homeshick command
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $ZSH/oh-my-zsh.sh

# fuzzy find
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ -e $HOME/.local-env.sh ]] && source $HOME/.local-env.sh

# User configuration

fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit; promptinit
prompt pure

# use plenv
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# flutter
export PATH="$HOME/code/flutter/bin:$PATH"

alias saw="docker run --rm -it -v ~/.aws:/home/.aws tbrock/saw:v0.2.2"
