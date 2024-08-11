#!/usr/bin/env sh

# assume zsh not installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add zsh profile
curl -Lo ~/.zshrc https://raw.githubusercontent.com/forrestbthomas/config/main/.zshrc
source ~/.zshrc