#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list

echo "Updating packages"
apt-get update -qq

echo "Installing ansible"
apt-get -Vyt jessie-backports install ansible