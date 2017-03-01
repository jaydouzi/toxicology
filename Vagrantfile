# -*- mode: ruby -*-
# vi: set ft=ruby :

# Config
Vagrant.configure("2") do |config|
  # Ubuntu 14.04 box
  config.vm.box = "ubuntu/trusty64"
  # Forward 8080 to 8080
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # config.vm.synced_folder "../data", "/vagrant_data"

  # provision with shell script
  config.vm.provision "shell", path: "bootstrap.sh"
end
