### DotFiles - Ansible

DotFiles and provisionning with ansible

## What is this?

This playbook installs and configures everything i used to do manually.
It will only work for a fresh debian jessie.

## What it does

Currently, 4 roles are defined:

### System

This role configures apt to install only wanted packages, not recommend or suggested.
It also installs useful packages:

 * curl
 * build-essential

### Git

This role installs git, obviously, and creates config file for defined user

 * .gitconfig
 * .gitalias
 * .gitignore

### Terminal

This role installs and configures usefull packages I use in terminal

 * zsh (with oh-my-zsh) set as defined user's shell
 * vim
 * screen
 * tmux
 * dtrx
 * ncdu
 * htop
 * links

## Php

This role installs php5, composer and symfony installer

## NodeJS

This role install nodejs 4.x and grunt-cli

## Ruby

This role installs ruby and bundler

### Display

This role is far from be ready to use. Currently, it only installs lightdm and openbox

## Todo

 - [ ] install github hub
 - [ ] include tmux cheatsheet
 - [ ] configure display with tint2, etc
 - [ ] ? install awesome and config it ?
 - [ ] configure php timezone
 - [ ] solve memory limit for composer
