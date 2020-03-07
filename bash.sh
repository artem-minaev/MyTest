#!/bin/bash
apt -y update
apt -y install apache2
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1>Web Server with ip: $myip</h1><br>Build by Terraform!<br>Use bash to have more" > /var/www/html/index.html
