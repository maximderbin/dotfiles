ZSH=$HOME/.oh-my-zsh

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"

ZSH_THEME="solarized-powerline"
ZSH_POWERLINE_SHOW_USER=false
ZSH_POWERLINE_SHOW_IP=false
ZSH_POWERLINE_SINGLE_LINE=true
ZSH_POWERLINE_SHOW_OS=false
ZSH_POWERLINE_SHOW_RETURN_CODE=true
ZSH_POWERLINE_SHOW_TIME=false

plugins=(git)

source $HOME/.aliases
source $ZSH/oh-my-zsh.sh

# rails
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export DISABLE_SPRING=true
