#
# ~/.bashrc
#
#If not running interactivelly, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    gnome*|xterm|xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    if [[ ${EUID} == 0 ]] ; then
        PS1=$'\u2234\u2192\u263f\u2605'
    else
        #
        # MAGIC LINE FOR POWER LINE TERMINAL GOODNESS
        #
        #uncomment to see if test to see if loop runs
        #echo -e '\e[0;41m'
        PS1=$'\[\033[97;2;104m\] \u \[\033[94;2;40m\]\xee\x82\xb0\[\033[30;2;107m\]\xee\x82\xb0\[\033[30;2;107m\] \W \[\033[97;2;49m\]\xee\x82\xb0\e[0m '
        #
        #
        #
        #

    fi
else
    PS1='${PROMPT_COMMAND:+($PROMPT_COMMAND)}\u@\h \w \$ '
fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
#PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"
case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PS1="\[\e]0;\u@\h \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

colors() {
    local fgc bgc vals seq0

    printf "Color escapes are %s\n" '\e[${value};...;${value}m'
    printf "Values 30..37 are \e[33mforeground colors\e[m\n"
    printf "Values 40..47 are \e[43mbackground colors\e[m\n"
    printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

    # foreground colors
    for fgc in {30..37}; do
        # background colors
        for bgc in {40..47}; do
            fgc=${fgc#37} # white
            bgc=${bgc#40} # black

            vals="${fgc:+$fgc;}${bgc}"
            vals=${vals%%;}

            seq0="${vals:+\e[${vals}m}"
            printf "  %-9s" "${seq0:-(default)}"
            printf " ${seq0}TEXT\e[m"
            printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
        done
        echo; echo
    done
}
[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon
#IDK
export PGHOST=localhost
#PRETTY COLORS
export TERM=xterm-256color
#SYMBOLIC LINKS TO DIRS
export CDPATH=~/symlinks
#REPLACE NANO WITH VIM WHEN NEEDED
export VISUAL=vim
export EDITOR="$VISUAL"
#OCAML STUFF
export OCAMLPARAM="_,I=$OPAMROOT/system/lib/toplevel"
eval 'opam config env'
PS1=$'\[\033[97;45;104m\] \u \[\033[94;2;40m\]\xee\x82\xb0\[\033[30;2;107m\]\xee\x82\xb0\[\033[30;2;107m\] \W \[\033[97;2;49m\]\xee\x82\xb0\e[0m '
clear
