#!/bin/bash
apt -y update
apt -y install apache2
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
git clone https://github.com/artem-minaev/MyTest.git
mv ./MyTest/docker/toolbox/src/index.html /var/www/html/index.html
