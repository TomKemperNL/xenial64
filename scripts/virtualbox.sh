
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro /home/vagrant/VBoxGuestAdditions.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
rm /home/vagrant/VBoxGuestAdditions.iso