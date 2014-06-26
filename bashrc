# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#function parse_git_branch {
#    ref=$(git symbolic-ref -q HEAD || git name-rev --name-only HEAD 2>/dev/null) || return
#    echo "("${ref#refs/heads/}")"
#}

source /usr/share/doc/git/contrib/completion/git-prompt.sh

bash_prompt () {
    source /usr/share/doc/git/contrib/completion/git-completion.bash
    function parse_git_dirty {
	[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
    }

    function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
    }
	export PS1='\[\e[36;1m\]\w\[\e[0m\] $(__git_ps1	"[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")\n\$ \[\e[0m\] \u@\h \$ '

}

#bash_prompt
#unset bash_prompt

# color code the branch names into the prompt
#if [ "$PS1" ]; then
#    if [
#    export PS1="$YELLOW\$(parse_git_branch)$WHITE[\u@\h $CYAN\W$WHITE]\$ "
#fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi
#
#if [ -f ~/.bash_profile ]; then
#    . ~/.bash_profile
#fi

# Go path settings
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/gocode
export GOBIN=$GOPATH/bin
export JSLIBPATH=$HOME/gocode/src/github.com/Novetta/VideoEnterprise/static/lib
export ICON_DIR=$HOME/gocode/src/github.com/Novetta/common/milsym/icons

bash_prompt
#unset bash_prompt


# add the sencha command 
export PATH=/home/scott/bin/Sencha/Cmd/4.0.4.84:$PATH

export SENCHA_CMD_3_0_0="/home/scott/bin/Sencha/Cmd/4.0.4.84"

[ -f /etc/profile ] && source /etc/profile
export PGDATA=/var/lib/pgsql/data
export PATH=$PATH:$HOME/bin:/usr/pgsql-9.3/bin
export PGUSER=postgres
export PGDATABASE=VideoEnterprise
export PGSSLMODE=disable
export PGPORT=6543
export PGPASSWORD=password
