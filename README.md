### DotFiles - Ansible

DotFiles and provisionning with ansible

## What is this?

This playbook installs and configures everything i used to do manually.
It will only work for a fresh debian jessie.

## What it does

Currently, 4 roles are defined:

### System

This role configures apt to install only wanted packages, not recommend or suggested.
It also installs usefull packages:

 * curl

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

### Display

This role is far from be ready to use. Currently, it only insttalls lightdm and openbox

## Todo

[ ] install github hub
[ ] include tmux cheatsheet
[ ] configure display with tint2, etc
[ ] ? install awesome and config it ?
