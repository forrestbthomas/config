# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="aussiegeek"
source $ZSH/oh-my-zsh.sh

### ENV VARS ###

### ALIASES ###
# GIT #
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gco="git checkout"
alias gcb="git checkout -b"

### FUNCTIONS ###
func src-it() {
    source ~/.zshrc
}

func zp() {
    vim ~/.zshrc
}

### STARTUP ###
eval "$(devbox global shellenv)"
