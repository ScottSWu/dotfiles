#!/usr/bin/env bash

set -xeuo pipefail

apt-get update
apt-get upgrade
apt-get install tmux curl git vim net-tools
