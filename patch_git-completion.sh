#!/bin/bash

# ex) UbuntuのCLI上でGitを快適に使えるようにする方法｜https://qiita.com/SUZUKI_Masaya/items/5abe232fa85d11ee89ea
mkdir ~/.git_completion/
cd ~/.git_completion/
git init
git config core.sparsecheckout true
git remote add origin https://github.com/git/git
git pull origin -t
git checkout v$(git --version | awk '{print $3}')
echo "git-completion.bash" "git-prompt.sh" | xargs -n 1 bash -c 'chmod a+x contrib/completion/${0}'
cd $HOME
wget https://gist.githubusercontent.com/massongit/40620659e72f8c87ef734323443fe706/raw/e91ab87a3f6d83d24f9a9a37aa0b1519935622f4/.bashrc.patch ~/.bashrc.patch
patch --follow-symlinks ~/.bashrc ~/.bashrc.patch
rm ~/.bashrc.patch
source ~/.bashrc
