sudo apt -y update
sudo apt -y install apache2
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
sudo service httpd start
chkconfig httpd on
