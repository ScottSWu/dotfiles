#!/usr/bin/env bash

set -xeuo pipefail

adduser scwu
usermod -aG sudo scwu

su scwu
mkdir ~/.ssh
cp ../authorized_keys ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install 18
