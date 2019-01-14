#!/bin/sh

# 必要なパッケージインストール
apt update
apt install -y \
  git \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

# GPGkキー追加
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Dockerリポジトリ追加
add-apt-repository -y \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Dockerインストール
apt update
apt install -y docker-ce

# vagrantユーザをdockerグループに追加
usermod -aG docker vagrant

# docker-composeインストール
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
