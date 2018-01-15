
vagrant box add ./../ubuntu-16.04-amd64-virtualbox.box --name test/xenial64 --force
vagrant destroy --force || true
vagrant up
