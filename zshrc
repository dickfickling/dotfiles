# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt autopushd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dick/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

########## DICK'S SUPER AWESOME ZSHRC OF SUPER DUPER SPECTACULARITY ##########

##### OSX SPECIFIC OPTIONS ###################################################
if [[ $HOME == /Users/* ]]; then

    [ ! "$UID" = "0" ] && osxbey -c white
    [  "$UID" = "0" ] && osxbey -c red
    export LC_ALL=en_US.UTF-8
    # MacPorts Installer addition on 2012-03-24_at_10:02:59: adding an appropriate PATH variable for use with MacPorts.
    export PATH=/opt/local/bin:/opt/local/sbin:/Users/dick/Documents/android/android-sdk-macosx/platform-tools:$PATH
    # Finished adapting your PATH environment variable for use with MacPorts.
    alias ls='gls --color=auto'
    alias radius='ssh radius'
    eval $(gdircolors -b ~/.dir_colors)
    function chrome() {
        if [[ $1 == *.* ]];
            then open -a Google\ Chrome http://"$1";
        else open -a Google\ Chrome http://"$1".com;
        fi
    }
    function google() {
         x=$@
         open -a Google\ Chrome "https://www.google.com/search?sourceid=chrome&q=${x// /%20}";
    }


###### ARCH SPECIFIC OPTIONS ##################################################
else

    [ ! "$UID" = "0" ] && archbey -c white
    [  "$UID" = "0" ] && archbey -c red
    eval $(dircolors -b ~/.dir_colors)
    alias ls='ls --color=auto'
    alias ulna='ssh ulna'
    alias install='sudo pacman -S $1'
    alias remove='sudo pacman -R $1'
    export USE_CCACHE=1
    export TSK_HOME=/home/dick/tsk/sleuthkit
    export PATH=$PATH:/home/dick/.gem/ruby/1.9.1/bin:/home/dick/bin:/opt/jdk1.6.0_31/bin:/opt/jdk1.6.0_31/jre/bin

fi
###### ARCHITECTURE INDEPENDENT ###############################################

export EDITOR=vim
export DISPLAY=:0
export PS1='[%n@%m %~] $ '

#function tt() {
#    pushd "$1" && ls;
#}
#function mdtt() {
#    mkdir -p "$1" && pushd "$1"
#}
function newc() {
    cp ~/.vim/default.c "$1" &&
        vim "+call cursor(4, 4)" $1
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
function ddg() {
    linkslink="links https://duckduckgo.com/?q="
    for var in "$@"
    do
        linkslink+="$var+";
    done
    $linkslink
}
function goog() {
    googlink="links https://google.com/search?q="
    for var in "$@"
    do
        googlink+="$var+";
   done
    $googlink
}

#alias nn='popd && ls'
alias ta='tmux attach'
alias lc='tmux list-clients'
alias watch='watch --interval=.5'
alias yc='links news.ycombinator.com'
alias md='mkdir'
#alias ..='cd ..'
#alias ...='cd ../..'
#alias ....='cd ../../..'
#alias .....='cd ../../../..'
alias tweet='t update $1'
#set -o vi
#bind -m vi-insert "\C-l":clear-screen

if [[ ! -n $TMUX ]] ; then tmux attach ; fi
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
#export PS1="\\w\$(__git_ps1 '(%s)') \$ "
