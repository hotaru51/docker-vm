#!/bin/sh

# 必要なパッケージインストール
apt update
apt install -y \
  git \
  curl

# vagrantユーザをdockerグループに追加
usermod -aG docker vagrant

# docker-composeインストール
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
