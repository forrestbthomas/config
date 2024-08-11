#!/usr/bin/env sh

# assume zsh not installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add zsh profile
curl -Lo ~/.zshrc https://raw.githubusercontent.com/forrestbthomas/config/main/.zshrc
source ~/.zshrc

# install devbox (will also install NixOS)
curl -fsSL https://get.jetify.com/devbox | bash # not sure why it needs to be bash

# install Fleek "high" profile
devbox global pull https://devbox.getfleek.dev/high