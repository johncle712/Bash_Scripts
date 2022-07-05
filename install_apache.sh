#!/bin/bash


#Update System, Install Apache, and enable services on startup

sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service


#Creates Index.html and moves it to default index location for Apache

echo "hello world" > index.html | sudo mv index.html /var/www/html/index.html

