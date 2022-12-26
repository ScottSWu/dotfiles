#!/usr/bin/env bash

set -xeuo pipefail

apt-get update
apt-get upgrade
apt-get install tmux curl git vim net-tools ffmpeg

adduser scwu
usermod -aG sudo scwu

cp -r /root/dotfiles /home/scwu
chown scwu:scwu /home/scwu/dotfiles
