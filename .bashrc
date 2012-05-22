alias ls='ls --color=auto'
export USE_CCACHE=1
export TSK_HOME=/home/dick/tsk/sleuthkit
export PATH=$PATH:/home/dick/.gem/ruby/1.9.1/bin:/home/dick/bin:/opt/jdk1.6.0_31/bin:/opt/jdk1.6.0_31/jre/bin
#export DISPLAY=:0
[ ! "$UID" = "0" ] && archbey -c white
[  "$UID" = "0" ] && archbey -c red
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
#export PS1="\\w\$(__git_ps1 '(%s)') \$ "
source ~/.git_completion.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
alias screen='TERM=screen screen'
function tt() {
	pushd "$1" && ls;
}
function mktt() {
    mkdir -p "$1" && pushd "$1"
}
function newpy() {
    cp ~/.vim/default.py "$1" &&
        vim "+call cursor(4, 4)" $1
}
alias nn='popd && ls'
alias ta='tmux attach'
alias lc='tmux list-clients'
alias ddg='links ddg.gg'
alias yc='links news.ycombinator.com'
#alias tweet='ttytter -status=$1'
function tweet() {
	t update "$1";
}
if [[ ! -n $TMUX ]] ; then tmux attach ; fi
eval $(dircolors -b ~/.dir_colors)
alias md='mkdir'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
