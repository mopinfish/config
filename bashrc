# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

############### settings for git-completion.bash && git-prompt.sh
if [ -d ~/.git_completion/contrib/completion/ ]; then
    source ~/.git_completion/contrib/completion/git-prompt.sh
    source ~/.git_completion/contrib/completion/git-completion.bash
fi

GIT_PS1_SHOWDIRTYSTATE=true

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
##############


# nvm
if [ -f ${HOME}/.node/nvm.sh ]; then
  source ${HOME}/.node/nvm.sh
fi
# User specific aliases and functions

alias ls='ls --color=tty'
PATH="$PATH":/usr/local/bin/bin
export PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

# setting for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/otsukano/ws/projects/sandbox/scala-sbt/serverless-scala/node_modules/tabtab/.completions/serverless.bash ] && . /home/otsukano/ws/projects/sandbox/scala-sbt/serverless-scala/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/otsukano/ws/projects/sandbox/scala-sbt/serverless-scala/node_modules/tabtab/.completions/sls.bash ] && . /home/otsukano/ws/projects/sandbox/scala-sbt/serverless-scala/node_modules/tabtab/.completions/sls.bash
