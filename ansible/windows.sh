#!/usr/bin/env bash

# stream output
export PYTHONUNBUFFERED=1
# show ANSI-colored output
export ANSIBLE_FORCE_COLOR=true

if hash ansible-playbook 2>/dev/null; then
	echo "ansible is already installed"
else
	sudo sh -c 'echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list'

	sudo apt-get update
	# Install ansible
	sudo apt-get -t jessie-backports install -y ansible
fi

ansible-playbook -vv -i "localhost," -c local /vagrant/ansible/playbook.yml