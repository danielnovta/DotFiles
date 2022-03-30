# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

# Setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# Setting to empty is unlimited
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT="%Y-%m-%d %H:%M.%S | "

alias ll='ls -l -a --color=auto'
alias ls='ls -a --color=auto'
alias la='ls -a --color=auto'
alias strom='/usr/bin/vcgencmd get_throttled'
alias ports='sudo lsof -i -P -n'

alias treesize='ncdu' # needs ncdu to be installed
alias bashrc='vim ~/.bashrc'
alias bashrc_source='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias rename='vidir' # needs moreutils to be installed
alias install='sudo aptitude' # needs 'synagic' to be installed
alias dpi='dietpi-launcher'
# Typo Prevention
alias cim='vim'

alias matrix='tmux set -g status off; cmatrix -B -u 7 -C cyan;echo "";echo "Run tmux set -g status on"'

#set the default text editor
export EDITOR='vim'
export VISUAL='vim'

## preserve bash history in multiple bash shells
# https://askubuntu.com/a/339925
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups
# append history entries..
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

TERM=xterm-256color
# if [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

tmux new -A -s tmux0
