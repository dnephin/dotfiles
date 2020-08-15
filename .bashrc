# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


export EDITOR=vim
export VISUAL=$EDITOR

# Prompt
c="\[\033["
b=$c"0;34m\]"
w=$c"0;37m\]"
clr=$c"00m\]"
PS1=$b"["$w"\u"$b"]["$w"\$(date +%H:%M)"$b"]["$w"\w"$b"]"$clr"\$ "


export PATH=$PATH:~/.local/bin/:~/bin/:~/go/bin

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

for f in ~/.bash_complete/*; do source $f; done
source ~/.bash_alias
[ -f ~/.bash_path ] && source ~/.bash_path
[ -f ~/.bash_local ] && source ~/.bash_local

if command -v kubectl > /dev/null; then
    source <(kubectl completion bash)
fi
