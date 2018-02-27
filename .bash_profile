if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

nn(){
  nano $HOME/Dropbox/Apps/Drafts/"$(date "+%Y-%m-%d-%H%M%S").md"
}

# terminal colors
red=$(tput setaf 124);
blue=$(tput setaf 33)
cyan=$(tput setaf 37);
green=$(tput setaf 64);
orange=$(tput setaf 166);
purple=$(tput setaf 125);
yellow=$(tput setaf 228);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

# prompt
PS1="\[${bold}\]\[${cyan}\]\u"; # bold & username
# PS1+="\[${white}\] at ";
# PS1+="\[${cyan}\]\h"; # host
# PS1+="\[${white}\] in ";
PS1+="\[${yellow}\] \w"; # working directory
PS1+="\[${white}\]\$(parse_git_branch)"; # git branch
# PS1+="\n";
PS1+="\[${Owhite}\] >> \[${reset}\]"; # '->' and reset colors

# Aliases
alias ll='ls -p'
alias llf='ls -p | grep -v /'
alias lld='ls -p | grep /$'
alias lla='ls -lah'
alias ffiles='find * -type f'
alias srch='grep -vI "\x00" -- *'
alias srchr='grep -vIr "\x00" -- .'
alias rtf='pbpaste | pbcopy'
alias rems='for f in *; do mv "$f" "${f// /}"; done'
alias repu='for f in *; do mv "$f" "${f// /_}"; done'
alias usage='df -hl'
alias ytdl='youtube-dl --yes-playlist'

alias genesis='cd $HOME/Dropbox/Workshare/Working\ Jobs && ll'
alias hist='history'
alias py2='workon py2env && cd $HOME/Dropbox/hub/Projects/PyToolkit && ll'
alias py3='workon py3env && cd $HOME/Dropbox/hub/Projects/PyToolkit && ll'
alias jynb='workon py3env && cd $HOME/Dropbox/hub/Projects/PyToolkit && jupyter notebook'
alias jygo='docker run -it -p 8888:8888 gopherdata/gophernotes-ds'
alias deac='deactivate'
alias gpath='cd $GOPATH && ll'
alias proj='cd $HOME/Dropbox/hub/Projects'
alias glog='git log --oneline -30 --graph --all --decorate'
alias media='cd /Volumes/Media\ Drive/Media/Movies/'
alias notes='cd $HOME/Dropbox/Apps/Drafts/ && ll'
alias bnotes='code $HOME/Dropbox/HUB/BASH_commands.sh'
alias bprof='code $HOME/.bash_profile'
alias gweather='curl wttr.in/~corona'

# Quicker navigation
alias home='cd $HOME && ll'
alias desk='cd $HOME/desktop/ && ll'
alias hub='cd $HOME/Dropbox/HUB && ll'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias back='cd $OLDPWD'

# alias mv='mv -v'
# alias cp='cp -v'
# alias rm='rm -v'
# alias df='df -h'
# alias du='du -h'
# alias mkdir='mkdir -p'
alias chrome="open -a 'Google Chrome'"
alias firefox="open -a 'Firefox'"

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'

# GoLang Settings
export GOROOT=/usr/local/go
export GOBIN=$HOME/Dropbox/HUB/Projects/GoLang/bin
export GOPATH=$HOME/Dropbox/HUB/Projects/GoLang
export PATH=$HOME/Dropbox/HUB/Projects/GoLang/bin:$PATH
export PATH=$HOME/bin:$PATH

export GREP_OPTIONS='--color=auto'

# use: **/* to include all files recursively
shopt -s globstar

# export GOPATH=$HOME/golang
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$HOME/golang/bin:$PATH

# export GOBIN=$GOPATH
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin

# Python VirtualEnvWrapper Settings
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh


# PS1="\[${bold}\]\[${red}\]\u"; # bold & username
# PS1+="\[${white}\] at ";
# PS1+="\[${cyan}\]\h"; # host
# PS1+="\[${white}\] in ";
# PS1+="\[${yellow}\]\w"; # working directory
# PS1+="\[${white}\]\$(parse_git_branch)"; # git branch
# PS1+="\n";
# PS1+="\[${white}\]>> \[${reset}\]"; # '->' and reset colors

# prompt
# PS1="\u"; # bold & username
# PS1+=" at ";
# PS1+="\h"; # host
# PS1+=" in ";
# PS1+="\w"; # working directory
# PS1+="\$(parse_git_branch)"; # git branch
# PS1+="\n";
# PS1+="\[${white}\]>> \[${reset}\]"; # '->' and reset colors
# export PS1

# simple prompt
# PS1="\]"; #username
# PS1+="\w"; # working directory
# PS1+="\$(parse_git_branch)"; # git branch
# PS1+="\[${white}\] >> \[${reset}\]"; # '>>' and reset colors
# export PS1

# prompt (Green only no color)
# PS1="\u"; # bold & username
# PS1+=" at ";
# PS1+="\h"; # host
# PS1+=" in ";
# PS1+="\w"; # working directory
# PS1+="\$(parse_git_branch)"; # git branch
# PS1+="\n";
# PS1+="\[${white}\]>> \[${reset}\]"; # '->' and reset colors
# export PS1

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/richardsenar/Dropbox/HUB/Projects/PyToolkit/yes/google-cloud-sdk/path.bash.inc' ]; then source '/Users/richardsenar/Dropbox/HUB/Projects/PyToolkit/yes/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/richardsenar/Dropbox/HUB/Projects/PyToolkit/yes/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/richardsenar/Dropbox/HUB/Projects/PyToolkit/yes/google-cloud-sdk/completion.bash.inc'; fi
