sudo apt-get install cifs-utils -y

#Latest integration tools
sudo apt-get install linux-image-virtual -y
sudo apt-get install linux-virtual-lts-xenial -y
sudo apt-get install linux-tools-virtual-lts-xenial linux-cloud-tools-virtual-lts-xenial -y

#Somehow quiet splash turns the console invisible in the hyperv manager
cat /etc/default/grub | sed s/quiet.splash// | sudo tee /etc/default/grub
sudo update-grub
