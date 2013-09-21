if [ -d ~/.dotfiles ]
then
  echo "\033[0;33mYou already have Dotfiles installed.\033[0m You'll need to remove ~/.dotfiles if you want to install"
  exit
fi

echo "\033[0;34mCloning dotfiles...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/babybeasimple/dotfiles.git ~/.dotfiles || {
  echo "git not installed"
  exit
}

echo "\033[0;34mLooking for an existing vim config...\033[0m"
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]
then
  echo "\033[0;33mFound ~/.vimrc.\033[0m \033[0;32mBacking up to ~/.vimrc.old\033[0m";
  mv ~/.vimrc ~/.vimrc.old;
fi
echo "\033[0;34mSymlinking .vimrc\033[0m"
ln -s ~/.dotfiles/.vimrc ~/.vimrc

echo "\033[0;34mLooking for an existing git config...\033[0m"
if [ -f ~/.gitconfig ] || [ -h ~/.gitconfig ]
then
  echo "\033[0;33mFound ~/.gitconfig.\033[0m \033[0;32mBacking up to ~/.gitconfig.old\033[0m";
  mv ~/.gitconfig ~/.gitconfig.old;
fi
echo "\033[0;34mSymlinking .vimrc\033[0m"
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "\033[0;34mLooking for an existing git ignore...\033[0m"
if [ -f ~/.gitignore ] || [ -h ~/.gitignore ]
then
  echo "\033[0;33mFound ~/.gitignore.\033[0m \033[0;32mBacking up to ~/.gitignore.old\033[0m";
  mv ~/.gitignore ~/.gitignore.old;
fi
echo "\033[0;34mSymlinking .vimrc\033[0m"
ln -s ~/.dotfiles/.gitignore ~/.gitignore

echo "\033[0;34mLooking for an existing gem config...\033[0m"
if [ -f ~/.gemrc ] || [ -h ~/.gemrc ]
then
  echo "\033[0;33mFound ~/.gemrc.\033[0m \033[0;32mBacking up to ~/.gemrc.old\033[0m";
  mv ~/.gemrc ~/.gemrc.old;
fi
echo "\033[0;34mSymlinking .gemrc\033[0m"
ln -s ~/.dotfiles/.gemrc ~/.gemrc

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32mBacking up to ~/.zshrc.old\033[0m";
  mv ~/.zshrc ~/.zshrc.old;
fi
echo "\033[0;34mSymlinking .zshrc\033[0m"
ln -s ~/.dotfiles/.zshrc ~/.zshrc

echo "\033[0;34mLooking for an existing zsh aliases...\033[0m"
if [ -f ~/.aliases ] || [ -h ~/.aliases ]
then
  echo "\033[0;33mFound ~/.aliases.\033[0m \033[0;32mBacking up to ~/.aliases.old\033[0m";
  mv ~/.aliases ~/.aliases.old;
fi
echo "\033[0;34mSymlinking .aliases\033[0m"
ln -s ~/.dotfiles/.aliases ~/.aliases

echo "\033[0;34mLooking for an existing .ctags...\033[0m"
if [ -f ~/.ctags ] || [ -h ~/.ctags ]
then
  echo "\033[0;33mFound ~/.ctags.\033[0m \033[0;32mBacking up to ~/.ctags.old\033[0m";
  mv ~/.ctags ~/.ctags.old;
fi
echo "\033[0;34mSymlinking .ctags\033[0m"
ln -s ~/.dotfiles/.ctags ~/.ctags
echo "\033[0;34mmv /etc/zshenv /etc/zshrc for vim-rvm scripting \033[0m"
sudo mv /etc/zshenv /etc/zshrc

echo "\033[0;34mDotfiles is installed...\033[0m"
