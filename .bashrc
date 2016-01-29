# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
 . ~/.bash_aliases
fi


export LANG=zh_CN.utf-8 #中文UTF-8编码
export PATH=$PATH:$DB_HOME/bin:/home/bran/bin #我自己写的shell脚本放这里

mcd() { mkdir -p "$1"; cd "$1";}
cls() { cd "$1"; ls;}

alias c="printf '\033c'" #清空屏幕，比clear好用多了，不信你试试。
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#Funny
alias busy="cat /dev/urandom | hexdump -C | grep \"ca fe\""

#Gdb
ulimit -c unlimited #打开核心转储(core dump)
alias gdb='gdb -q' #屏蔽gdb启动时的提示信息
