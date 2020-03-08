#!/bin/bash
apt -y update
apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get -y update
apt-get -y install docker-ce docker-ce-cli containerd.io
git clone https://github.com/artem-minaev/MyTest.git
docker pull artmin/minaev-doc
docker run -d -p 80:80 artmin/minaev-doc
