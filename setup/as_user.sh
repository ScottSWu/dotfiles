#!/usr/bin/env bash

set -xeuo pipefail

mkdir ~/.ssh
cp ~/dotfiles/authorized_keys ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install 18
