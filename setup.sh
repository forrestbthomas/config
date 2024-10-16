#!/usr/bin/env sh
pushd $HOME

# assume zsh not installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add zsh profile
curl -Lo ~/.zshrc https://raw.githubusercontent.com/forrestbthomas/config/main/.zshrc
source ~/.zshrc

# install devbox (will also install NixOS)
curl -fsSL https://get.jetify.com/devbox | bash # not sure why it needs to be bash

# install Fleek "high" profile
devbox global pull https://devbox.getfleek.dev/high
devbox init

# add global tools
tools=(
    "jq"
    "yq"
    "ripgrep"
    "fzf"
    "git"
    "vim"
    "vscode"
    "python3"
    "nodejs"
    "go"
)
for tool in $tools; do
    devbox global add $tool
done

# enter devbox shell
eval "$(devbox global shellenv)"