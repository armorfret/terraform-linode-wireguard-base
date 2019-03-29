#!/usr/bin/env bash

set -euo pipefail

resize2fs /dev/sda

export DEBIAN_FRONTEND=noninteractive

rm /etc/ssh/ssh_host*
ssh-keygen -A

apt update
apt upgrade -y
apt autoremove -y
apt install -y python-pip build-essential python-dev python-virtualenv git vim-nox

systemctl restart sshd

DEPLOY_DIR=/opt/deploy
[[ -e "$DEPLOY_DIR" ]] && rm -rf "$DEPLOY_DIR"
git clone "${deploy_repo}" "$DEPLOY_DIR"
