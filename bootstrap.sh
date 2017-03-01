#!/usr/bin/env bash

if [ ! -f ~/runonce ]
then
	cd /home/vagrant
	echo "Installing nvm..."
	wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
	export NVM_DIR="/home/vagrant/.nvm"
		[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
		nvm install node
		npm install bower -g
		npm install electron -g
		touch ~/runonce
	else
		echo "nvm already installed"
		nvm node --version
fi	