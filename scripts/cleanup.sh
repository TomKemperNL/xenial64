sudo apt-get -y autoremove
sudo apt-get -y clean

# Remove temporary files
sudo rm -rf /tmp/*
sudo rm -rf /home/vagrant/*

# Zero out free space
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY