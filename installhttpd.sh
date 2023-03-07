#!/bin/bash

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello World by Ranjan Gnanasekaran from $(hostname -f)" > /var/www/html/index.html