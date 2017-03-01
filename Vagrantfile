# -*- mode: ruby -*-
# vi: set ft=ruby :

HOSTNAME_MACHINE = "electron-v"

# Base setup *runs as root*
$baseScript = <<SCRIPT
		cd /home/vagrant
		apt-get update
		echo "Installing required graphics libraries"
		apt-get install -y libgtk2.0-0
		apt-get install -y libxss1
	  apt-get install -y GConf2
		apt-get install -y libnss3
SCRIPT

# All Vagrant configuration is done below.

Vagrant.configure(2) do |config|
	hostname = HOSTNAME_MACHINE
	
  # Box
	config.vm.box = "ubuntu/trusty64"

	# Shared folders
	config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: "vagrant"

	# Setup X-forwarding so we can see the electron app
	config.ssh.forward_x11 = true

	# Provisioning
	config.vm.provision :shell, :inline => $baseScript
	config.vm.provision :shell, :path => "bootstrap.sh", privileged: false

  # Virtualbox config
	config.vm.provider "virtualbox" do |vb|
		vb.customize	[
										"modifyvm", :id,
										"--memory", 1024,
									]

		# Allow the creation of symlinks for nvm
		vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant","1"]
	end
end