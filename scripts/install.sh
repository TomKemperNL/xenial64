#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
sudo apt update -y
sudo apt upgrade -y

sudo apt install -y curl

# Install vagrant key
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

# Install Chef Client
curl -L https://omnitruck.chef.io/install.sh | sudo bash

# Disable DNS reverse lookup
sudo bash -c "echo 'UseDNS no' >> /etc/ssh/sshd_config"

# Set dhcp timeout to 15 seconds to allow static IP boots in Vagrant without timeout.
cat /etc/dhcp/dhclient.conf | sed 's/timeout 300/timeout 15/' | sudo tee /etc/dhcp/dhclient.conf

sudo reboot