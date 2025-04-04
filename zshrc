# zmodload zsh/zprof
plugins=(z git macos vi-mode per-directory-history dirhistory)

export ZSH_THEME="arrow"
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export EDITOR=nvim

export HISTCONTROL=ignorespace

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '\e[3~' delete-char
# disable zsh autocompletion
setopt autolist
setopt noautomenu

export GOPATH=~/Development/Go
export GOBIN=~/Development/Go/bin

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:~/bin
export PATH=$GOBIN:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH=$PATH:~/Development/flutter/bin:~/Development/flutter/bin/cache/dart-sdk/bin/:~/fvm/default/bin
export PATH=$PATH:~/.pub-cache/bin
# yarn global packages
export PATH=$PATH:~/.config/yarn/global/node_modules/.bin

alias grep='ag'
alias gop='cd $GOPATH'
alias map="xargs -n1"
alias top="top -o cpu"
alias cd='cd -P'
alias vim=nvim
alias icloud='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/'

alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; git -C ~/.dotfiles pull --rebase'
alias afk="osascript -e 'tell app \"System Events\" to key code 12 using {control down, command down}'"
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias vnc='open /System/Library/CoreServices/Applications/Screen\ Sharing.app/'
alias strace='sudo dtruss -t open_nocancel -p'
alias lsusb='system_profiler SPUSBDataType'
alias cat=bat
alias rip="git branch | grep -v main | grep -v '\*' | xargs -n1 git branch -D"

export TERM=screen-256color-bce
export SAVEHIST=30000
export HISTSIZE=30000
export HOMEBREW_NO_ANALYTICS=1

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ANDROID_SDK_ROOT=${HOME}/Library/Android/sdk
export ANDROID_HOME=${ANDROID_SDK_ROOT}

export PATH=$PATH:~/.local/bin
export PATH=$PATH:${ANDROID_SDK_ROOT}/tools
export PATH=$HOME/bin:/opt/homebrew/bin:$PATH
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

if [ "$TMUX" = "" ]; then
    tmux attach -t alacritty || tmux new -s alacritty
fi

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/nwagensonner/.dart-cli-completion/zsh-config.zsh ]] && . /Users/nwagensonner/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
