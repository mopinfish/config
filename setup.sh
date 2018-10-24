#! /bin/bash

cd 
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

bk_dir="config/vim_tmp/vim_bk"
swp_dir="config/vim_tmp/vim_swp"
if [ ! -e ${bk_dir} ]; then
  mkdir -p ${bk_dir}
fi
if [ ! -e ${swp_dir} ]; then
  mkdir -p ${swp_dir}
fi

# install vimproc
proc_lib_dir="config/vim/bundle/vimproc/autoload/vimproc_linux64.so"
if [ ! -e $proc_lib_dir ]; then
  cd ~/config/vim/bundle/vimproc/
  make
  cd
fi

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

# setup git-prompt.sh and git-completion.bash 
if [ -f ~/config/patch_git-completion.sh ]; then
    ~/config/patch_git-completion.sh
fi
