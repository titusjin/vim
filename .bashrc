# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# color
export GREP_COLOR='01;32'
alias grep='grep --color'

function pretty_prompt {
        local GRAY="\[\033[1;30m\]"
        local LIGHT_GRAY="\[\033[0;37m\]"
        local WHITE="\[\033[1;37m\]"
        local LIGHT_BLUE="\[\033[1;34m\]"
        local LIGHT_RED="\[\033[1;31m\]"
        local YELLOW="\[\033[1;33m\]"
        local LIGHT_GREEN="\[\e[32;1m\]"
        #host=`hostname`;
        #if [ "$host" == "queensure.corp.yahoo.com" ];
        #then
        #        local YELLOW="\[\033[1;34m\]"
        #else
        #        local YELLOW="\[\033[1;33m\]"
        #fi

        case $TERM in
    xterm*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        TITLEBAR=""
        ;;
        esac

        if [ "$YROOT_NAME" == "" ]; then
          local YRNAME=""
        else
          local YRNAME="$LIGHT_GRAY[$LIGHT_GREEN""yroot:$YROOT_NAME$LIGHT_GRAY]"
        fi

        PS1="$YRNAME$LIGHT_GRAY[$YELLOW$LOGNAME@$TITLEBAR`hostname | sed 's/.yahoo.com.*//'`$LIGHT_GRAY:$LIGHT_BLUE\$PWD$LIGHT_GRAY]\n$WHITE\$\[\e[0m\]"
        #PS2="$LIGHT_BLUE-$YELLOW-$YELLOW-$LIGHT_GRAY "
}
pretty_prompt
export TERM=xterm-256color

alias tmux="tmux -2"
export PATH=/usr/local/bin:$PATH
