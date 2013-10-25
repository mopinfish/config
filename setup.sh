#! /bin/zsh
rm /home/${USER}/.bashrc
rm /home/${USER}/.zshrc
rm -rf /home/${USER}/.zsh
rm -rf ../.zsh_history
rm /home/${USER}/.vimrc
rm -rf /home/${USER}/.vim
rm -rf /home/${USER}/.vim_tmp
rm -rf /home/${USER}/.vim/bundle/vundle
rm -rf /home/${USER}/.vim/bundle/neobundle.vim
rm -rf /home/${USER}/.vim/bundle/vimproc
rm /home/${USER}/.screenrc
rm /home/${USER}/.tmux.conf
rm /home/${USER}/.gitconfig
rm /home/${USER}/.gitignore

# bash config
ln -s /home/${USER}/config/bashrc /home/${USER}/.bashrc
# zshell config
ln -s /home/${USER}/config/zshrc /home/${USER}/.zshrc
ln -s /home/${USER}/config/zsh /home/${USER}/.zsh
ln -s config-files/.zsh_history ../.zsh_history

# vim config
ln -s /home/${USER}/config/vimrc /home/${USER}/.vimrc
ln -s /home/${USER}/config/vim /home/${USER}/.vim
ln -s /home/${USER}/config/vim_tmp /home/${USER}/.vim_tmp
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc

# screen config
ln -s /home/${USER}/config/screenrc /home/${USER}/.screenrc
# tmux config
ln -s /home/${USER}/config/tmux.conf /home/${USER}/.tmux.conf

# git config
ln -s /home/${USER}/config/gitconfig /home/${USER}/.gitconfig
ln -s /home/${USER}/config/gitignore /home/${USER}/.gitignore
