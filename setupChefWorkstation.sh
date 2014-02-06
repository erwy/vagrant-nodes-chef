#!/bin/bash

curl -L https://www.opscode.com/chef/install.sh | sudo bash
sudo apt-get -y -q install git
git clone git://github.com/opscode/chef-repo.git

sudo mkdir -p -v /home/vagrant/chef-repo/.chef
sudo cp /vagrant/*.pem /home/vagrant/chef-repo/.chef



sudo mkdir -p -v /home/vagrant/.chef
sudo chown -R vagrant:vagrant /home/vagrant/.chef
sudo cp /vagrant/knife.rb /home/vagrant/.chef/

sudo rm -r /home/vagrant/chef-repo/.git
cd /home/vagrant/chef-repo
sudo git init 
sudo git config --global user.email "me@dummy.com"
sudo git config --global user.name "me dummy"
sudo git add .
sudo git commit -m "First commit"


sudo chown -R vagrant:vagrant /home/vagrant/.chef
sudo chown -R vagrant:vagrant /home/vagrant/chef-repo

sudo echo "33.33.33.50 chef-server" >> /etc/hosts
sudo echo "33.33.33.52 chefnode" >> /etc/hosts




