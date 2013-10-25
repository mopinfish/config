#! /bin/zsh
rm /home/${USER}/.bashrc
rm /home/${USER}/.zshrc
rm -rf /home/${USER}/.zsh
rm /home/${USER}/.vimrc
rm -rf /home/${USER}/.vim
rm -rf /home/${USER}/.vim_tmp
rm -rf /home/${USER}/.vim/bundle/vundle
rm /home/${USER}/.screenrc
rm /home/${USER}/.tmux.conf
rm /home/${USER}/.gitconfig
rm /home/${USER}/.gitignore

# bash config
ln -s /home/${USER}/config/bashrc /home/${USER}/.bashrc
# zshell config
ln -s /home/${USER}/config/zshrc /home/${USER}/.zshrc
ln -s /home/${USER}/config/zsh /home/${USER}/.zsh

# vim config
ln -s /home/${USER}/config/vimrc /home/${USER}/.vimrc
ln -s /home/${USER}/config/vim /home/${USER}/.vim
ln -s /home/${USER}/config/vim_tmp /home/${USER}/.vim_tmp
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# screen config
ln -s /home/${USER}/config/screenrc /home/${USER}/.screenrc
# tmux config
ln -s /home/${USER}/config/tmux.conf /home/${USER}/.tmux.conf

# git config
ln -s /home/${USER}/config/gitconfig /home/${USER}/.gitconfig
ln -s /home/${USER}/config/gitignore /home/${USER}/.gitignore
