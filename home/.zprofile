# cd
export CDPATH=.:~:/etc:/var
alias ..2="../.."
alias ..3="../../.."
alias ..4="../../../.."
alias ..5="../../../../.."
alias ...=..2
alias ....=..3
alias .....=..4
alias ......=..5
# mkdir and cd in single command
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

export WORDCHARS=''

# mysql
PATH=/usr/local/mysql/bin:$PATH
MANPATH=/usr/local/mysql/man:$MANPATH

# ruby
#export RUBYOPT='-Ku -rkconv'
#export RUBYPATH=$HOME/bin

# Node.js
export NODE_PATH=/usr/local/lib/node_modules

# Java
#export JAVA_HOME=/Library/Java/Home
export JAVA_HOME=`/usr/libexec/java_home`
PATH=$JAVA_HOME/bin:$PATH

# Spring Roo
export ROO_OPTS="-Droo.bright=true"

# Ruby
#RUBYLIB=$HOME/Library/Migemo
#export RUBYLIB

# Subversion
export SVN_EDITOR=emacsclient
export EDITOR=emacsclient
export VISUAL=emacsclient
export ALTERNATE_EDITOR=vim

PATH=~/bin:$PATH
export PATH
