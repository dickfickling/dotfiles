export LC_ALL=en_US.UTF-8
# MacPorts Installer addition on 2012-03-24_at_10:02:59: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/Users/dick/Documents/android/android-sdk-macosx/platform-tools:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
PS1='[\u@\h \W]\$ '
if [[ ! -n $TMUX ]] ; then tmux attach ; fi;
eval $(gdircolors -b ~/.dir_colors)
function tt() {
	pushd "$1" && ls;
}
function nn() {
	popd && ls;
}
alias ta='tmux attach'
alias lc='tmux list-clients'
alias ls='gls --color=auto'
function tweet() {
	t update "$1";
}
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
