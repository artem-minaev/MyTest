#!/bin/bash
sudo apt -y update
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
docker pull artmin/minaev-doc
docker run -d -p 80:80 artmin/minaev-doc
