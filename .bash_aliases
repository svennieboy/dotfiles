#!/bin/bash

# Easy editing of this file: http://www.modernperlbooks.com/mt/2009/10/remove-the-little-pessimizations.html
alias realias='$EDITOR ~/.bash_aliases; source ~/.bash_aliases'

# Colorize standard commands
alias ls='ls --color=auto -a -F'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Always colour my diffs
alias diff='colordiff'


# Syntax highlighting
alias hl='highlight --out-format xterm256 --style navy'
alias json_pretty='python -m json.tool | hl --syntax=json'


# Add an "alert" alias for long running commands.  Use like so:↲
#   sleep 10; alert↲
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# When invoking git in my homedir, act on my dotfiles repo
alias git='_git() { if [ `pwd` == "$HOME" ] ; then command git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME "$@" ; else command git "$@"; fi }; _git'

# Make head and tail use available screen size
# Aso, more responsive tail -f
alias head='head -n $(($LINES - 2))'
alias tail='tail -n $(($LINES - 2)) -s.1'

# Simple graphical browser
alias glinks='links2 -g'

# Kindle USB networking
alias kindle_un='sudo ifconfig usb0 192.168.15.201'
alias kindle_ssh='ssh root@192.168.15.244'

# Perl local::lib easy syntax
# See http://blogs.perl.org/users/aristotle/2015/12/locallib-ez.html
#alias perl-locallib='_perl_locallib() { eval "`perl -M\'local::lib @ARGV\' - "$@" 1<&-`" ; }; _perl_locallib'

alias nd='mono /opt/Natural\ Docs/NaturalDocs.exe'
