ZSH=$HOME/.oh-my-zsh

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ZSH_DISABLE_COMPFIX="true"

ZSH_THEME="solarized-powerline"
ZSH_POWERLINE_SHOW_USER=false
ZSH_POWERLINE_SHOW_IP=false
ZSH_POWERLINE_SINGLE_LINE=true
ZSH_POWERLINE_SHOW_OS=false
ZSH_POWERLINE_SHOW_RETURN_CODE=true
ZSH_POWERLINE_SHOW_TIME=false

BREW_PREFIX=$(brew --prefix)
EDITOR=$BREW_PREFIX/bin/vim

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $BREW_PREFIX/etc/profile.d/z.sh
source $HOME/.aliases.zsh
source $HOME/.linkedin.env.zsh

eval "$(rbenv init -)"

path=(
  $BREW_PREFIX/opt/gnu-sed/libexec/gnubin # override system sed with gnu-sed
  $path
)
