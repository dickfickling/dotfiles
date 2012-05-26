[ ! "$UID" = "0" ] && archbey -c white
[  "$UID" = "0" ] && archbey -c red
source ~/.git_completion.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export USE_CCACHE=1
export TSK_HOME=/home/dick/tsk/sleuthkit
export PATH=$PATH:/home/dick/.gem/ruby/1.9.1/bin:/home/dick/bin:/opt/jdk1.6.0_31/bin:/opt/jdk1.6.0_31/jre/bin
export EDITOR=vim
export DISPLAY=:0

function tt() {
	pushd "$1" && ls;
}
function mdtt() {
    mkdir -p "$1" && pushd "$1"
}
function newpy() {
    cp ~/.vim/default.py "$1" &&
        vim "+call cursor(4, 4)" $1
}
function h2d() {
    printf "%d\n" "0x$1"
}
function d2h() {
    printf "%x\n" "$1"
}

alias ls='ls --color=auto'
alias nn='popd && ls'
alias ta='tmux attach'
alias lc='tmux list-clients'
alias ddg='links ddg.gg'
alias yc='links news.ycombinator.com'
alias md='mkdir'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ulna='mosh ulna'
alias install='sudo pacman -S $1'
alias remove='sudo pacman -R $1'
alias tweet='t update $1'
#alias tweet='ttytter -status=$1'

if [[ ! -n $TMUX ]] ; then tmux attach ; fi
eval $(dircolors -b ~/.dir_colors)
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
#export PS1="\\w\$(__git_ps1 '(%s)') \$ "
