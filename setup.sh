#!/usr/bin/env bash
# curl -L https://dotfiles.scwu.io/setup.sh | bash

set -xeuo pipefail

sudo apt-get install tmux git vim net-tools unzip

wget https://github.com/ScottSWu/dotfiles/archive/refs/heads/master.zip -O dotfiles.zip
unzip -o dotfiles

mkdir -p ~/.ssh
cp ~/dotfiles-master/authorized_keys ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

cp ~/dotfiles-master/.* ~/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 22
