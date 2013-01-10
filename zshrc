# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
setopt PROMPT_SUBST
setopt RM_STAR_WAIT
#setopt autopushd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dick/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
bindkey '^R' history-incremental-search-backward
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

########## DICK'S SUPER AWESOME ZSHRC OF SUPER DUPER SPECTACULARITY ##########

##### OSX SPECIFIC OPTIONS ###################################################
if [[ $HOME == /Users/* ]]; then

    #[ ! "$UID" = "0" ] && osxbey -c white
    #[  "$UID" = "0" ] && osxbey -c red
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

    #[ ! "$UID" = "0" ] && archbey -c white
    #[  "$UID" = "0" ] && archbey -c red
    eval $(dircolors -b ~/.dir_colors)
    alias ls='ls --color=auto'
    alias ulna='ssh ulna'
    alias install='sudo pacman -S $1'
    alias remove='sudo pacman -R $1'
    alias update='sudo pacman -Syu'
    alias v+='amixer set Master 5%+ unmute &> /dev/null'
    alias v-='amixer set Master 5%- unmute &> /dev/null'
    alias c='sudo netcfg up'
    alias d='sudo netcfg down'
    alias ubuntu='qemu-kvm -hda ~/qemu/ubuntu -m 1024 -vga std -smp 2 -boot d'
    alias tether='sudo ifconfig usb0 up && sudo dhcpcd usb0'
    export USE_CCACHE=1
    export TSK_HOME=/home/dick/tsk/sleuthkit
    #export PATH=$PATH:/home/dick/.gem/ruby/1.9.1/bin:/home/dick/bin:/opt/jdk1.6.0_33/bin:/opt/jdk1.6.0_33/jre/bin

fi
###### ARCHITECTURE INDEPENDENT ###############################################

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export EDITOR=vim
export DISPLAY=:0
autoload -U colors && colors
PROMPT='%B%F{blue}%c%b%F{green}$(parse_git_branch) %f'
RPROMPT='%F{cyan}[%W - %*]%f'

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
function up() {
    for ((i = 0; i < $1; i += 1)); do
        cd ..
    done
}


#alias nn='popd && ls'
alias ta='tmux attach'
alias lc='tmux list-clients'
alias watch='watch --interval=.5 '
alias yc='links news.ycombinator.com'
alias md='mkdir'
alias tweet='t update $1'
alias ds='du -h -d0'
#set -o vi
#bind -m vi-insert "\C-l":clear-screen

if [[ ! -n $TMUX ]] ; then tmux attach ; fi
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
#export PS1="\\w\$(__git_ps1 '(%s)') \$ "
export TERM=rxvt
