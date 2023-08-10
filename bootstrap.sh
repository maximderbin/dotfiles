# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Create temporary folder for downloads
mkdir ~/init

#sudo gem install tmuxinator

###############################################################################
# zsh                                                                         #
###############################################################################

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-zsh theme
curl -s https://raw.githubusercontent.com/kuoe0/oh-my-zsh-solarized-powerline-theme/master/solarized-powerline.zsh-theme > ~/.oh-my-zsh/themes/solarized-powerline.zsh-theme

###############################################################################
# Terminal.app                                                                #
###############################################################################

# Download Solorized Dark theme
curl -s https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/terminal/Solarized%20Dark.terminal > ~/init/Solarized\ Dark.terminal
# Download Menlo font for Powerline
curl -s https://github.com/abertsch/Menlo-for-Powerline/blob/master/Menlo%20for%20Powerline.ttf > ~/init/Menlo\ Regular\ for\ Powerline.ttf
# Install Menlo for Powerlone font
open "${HOME}/init/Menlo Regular for Powerline.ttf"

###############################################################################
# iTerm                                                                       #
###############################################################################

# Install the Solarized Dark theme
curl -s https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark.itermcolors > ~/init/Solarized\ Dark.itermcolors
open "${HOME}/init/Solarized Dark.itermcolors"

# Set up MenloForPowerline as default font
/usr/libexec/PlistBuddy -c 'Set :"New Bookmarks":0:"Normal Font" MenloForPowerline-Regular 14' ~/Library/Preferences/com.googlecode.iterm2.plist

# Remove temporary folder
rm -rf ~/init
