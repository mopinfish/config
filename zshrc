#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

## 補完機能の強化
autoload -U compinit
compinit

## 先方予測機能
autoload predict-on
predict-on

## 色を使う
setopt prompt_subst

## ビープ音ならさない
setopt nobeep

PATH="$PATH":/usr/local/bin/bin
# export PATH=/usr/local/bin/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib
export PATH=/usr/local/haskell/ghc/6.12.3/bin:$PATH
# java path
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
export PATH=$PATH:$JAVA_HOME/bin
# scala
export SCALA_HOME=/usr/local/scala-2.7.7.final
export PATH=$PATH:$SCALA_HOME/bin
# maven
export MAVEN_HOME=/usr/local/apache-maven-2.2.1
export PATH=$PATH:$MAVEN_HOME/bin
# mac用の設定
if brew > /dev/null 2>&1; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    export MANPATH=/opt/local/man:$MANPATH
    export PATH=/usr/local/sbin:/opt/local/sbin$PATH
    export PATH=/usr/local/bin:/opt/local/bin:$PATH
    export PATH=/usr/local/share/python:$PATH:/Applications/eclipse/android-sdk-mac_x86/tools
    export PATH="$(brew --prefix)/bin:/usr/local/Cellar/php54/5.4.21/bin:$PATH"
    echo '[command] brew found'
fi

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

# nvm用の設定
setopt nonomatch
#source ${HOME}/.nvm/nvm.sh
source /usr/local/nvm/nvm.sh
nvm use "v0.10.13"
#export NODE_PATH=~/.nvm/v0.6.17/lib/node_modules
export NODE_PATH=~/usr/local/nvm/v0.6.17/lib/node_modules

#
# alias設定
#

# 基本的なこと
alias la='ls -AF'
alias ll='ls -l'
alias df="df -h"
alias du="du -h"
alias shasum="sha1sum"

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

#Lang
export LANG=ja_JP.UTF-8

#SVNの設定
export SVN_EDITOR="vim"

#prompt
#PROMPT="%m:%n%% "
#PROMPT2="%_%%"
#RPROMPT="[%~]"
#SPROMPT="correct: %R -> %r ? " 

case ${UID} in
#0)
#    PROMPT="%B%{[31m%}%/#%{[m%}%b "
#    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
#    RPROMPT="[%~]"
#    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
#    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
#        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
#    ;;
*)
#    PROMPT="%B%{[31m%}%/#%{[m%}%b "
#    PROMPT2="%{[31m%}%_%%%{[m%} "
    PROMPT="%n%% "
    PROMPT2="%_%%"
    RPROMPT="%{%}[%~]"
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

#setopt xtrace                            # コマン
bindkey -v
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^h' history-beginning-search-backward-end
bindkey '^n' history-beginning-search-forward-end

#cd補完
setopt auto_cd
setopt auto_pushd

#補完候補を詰めて表示
setopt list_packed

# 履歴
HISTFILE=$HOME/.zsh/.zshistory   # ヒストリを保存するファイル名
HISTSIZE=10000                   # メモリに展開する履歴数
SAVEHIST=30000                   # HISTFILEに保存する履歴数
setopt bang_hist                 # !を使ったヒストリ展開を利用する
setopt extended_history          # 履歴に開始/終了時刻を記録
setopt inc_append_history        # 履歴をインクリメンタルに追加
setopt hist_ignore_dups          # 同じコマンドを連続して実行したとき、1つしか記録しない
unsetopt share_history           # 複数のzshセッションでヒストリをリアルタイムで共有する
setopt hist_ignore_space         # スペースから始まるものはヒストリに追加しない
setopt hist_reduce_blanks        # ヒストリ記録時に余分なスペースを削除する
setopt hist_no_store             # history コマンドは記録しない
setopt append_history            # zsh 複数起動時 history ファイルを上書きせず追記
unsetopt hist_ignore_all_dups    # ヒストリ内に全く同じ行があれば、古い方を削除する
unsetopt hist_expire_dups_first  # 古いヒストリが削除されるとき、まったく同じ行があれば、それを削除する
unsetopt hist_save_no_dups       # ヒストリ記録時に、古いコマンドと同じものがあれば削除する

## グロブ
setopt glob                  # ファイルグロブを利用する
setopt extendedglob          # 拡張グロブを利用する
setopt glob_dots             # ドットで始まるファイルもファイルグロブでマッチさせる
setopt case_glob             # 大文字小文字を区別する
setopt numeric_glob_sort     # ファイル名を数字としてソート 1, 10, 2 -> 1, 2, 10
setopt nomatch               # マッチしない場合はエラーにする
setopt mark_dirs             # ファイル名展開でディレクトリだと / を付ける
setopt extended_glob                     # ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt brace_ccl                         # {a-c} を a b c に展開する


## コマンドエイリアス
alias du="du -h"
alias df="df -h"
alias tmux="tmux -2"
alias gitrev="git diff master..na_mail"
alias fgrp="find -type d -name '.svn' -prune  -o -type f  -print | xargs grep"

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
