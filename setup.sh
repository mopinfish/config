#! /bin/zsh

rm ~/.bashrc
rm ~/.zshrc
rm -rf ~/.zsh
rm ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.vim_tmp
rm -rf ~/.vim/bundle/vundle
rm -rf ~/.vim/bundle/neobundle.vim
rm -rf ~/.vim/bundle/vimproc
rm ~/.screenrc
rm ~/.tmux.conf
rm ~/.gitconfig
rm ~/.gitignore
mkdir ~/config/vim_tmp/vim_bk
mkdir ~/config/vim_tmp/vim_swp

# bash config
ln -s ~/config/bashrc ~/.bashrc
# zshell config
ln -s ~/config/zshrc ~/.zshrc
ln -s ~/config/zsh ~/.zsh

# vim config
ln -s ~/config/vimrc ~/.vimrc
ln -s ~/config/vim ~/.vim
ln -s ~/config/vim_tmp ~/.vim_tmp
#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc

# screen config
ln -s ~/config/screenrc ~/.screenrc
# tmux config
ln -s ~/config/tmux.conf ~/.tmux.conf

# git config
ln -s ~/config/gitconfig ~/.gitconfig
ln -s ~/config/gitignore ~/.gitignore
