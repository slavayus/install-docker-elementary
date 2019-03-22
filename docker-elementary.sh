#!/bin/bash
set -e

sudo apt-get update;

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common;

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable";

sudo apt-get update;

sudo apt-get install docker-ce;

sudo systemctl enable docker;

echo 'All done!'
