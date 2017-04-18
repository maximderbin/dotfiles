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

BREW_PREFIX=$(brew --prefix)

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/local/etc/profile.d/z.sh
source $HOME/.aliases
source $HOME/.linkedin.env.zsh

eval "$(pyenv init -)"

path=(
  $BREW_PREFIX/opt/gnu-sed/libexec/gnubin # override system sed with gnu-sed
  $HOME/.pyenv/bin                        # pyenv
  $path
)
