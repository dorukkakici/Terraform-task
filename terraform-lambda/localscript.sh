#!/bin/bash

sudo yum install wget -y
wget https://releases.hashicorp.com/terraform/1.10.5/terraform_1.10.5_linux_amd64.zip
unzip terraform_1.10.5_linux_amd64.zip
chmod +x terraform
sudo mv terraform /bin
terraform version
rm -rf terraform_1.10.5_linux_amd64.zip