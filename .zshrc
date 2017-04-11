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
source $HOME/.linkedin.env.zsh
source $ZSH/oh-my-zsh.sh

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export HTTP_USERID=mderbin
export REMOTE_ADDR=127.0.0.1
export REMOTE_USER=mderbin
