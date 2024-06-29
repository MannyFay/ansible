#!/usr/bin/env bash

#-- Update the system:
sudo pacman -Syu --noconfirm

#-- Clean up package cache:
sudo pacman -Sc --noconfirm

#-- Install Python3 and pip3:
sudo pacman -S python-pip --noconfirm

#-- Install sshpass:
sudo pacman -S sshpass --noconfirm

#-- Install Ansible:
sudo pacman -S ansible --noconfirm

#-- Install Git:
sudo pacman -S git --noconfirm

#-- Create GitHub directory:
mkdir -p $HOME/personal/github/

#-- Jump into GitHub directory:
cd $HOME/personal/github

#-- Clone Ansible Project:
git clone https://github.com/MannyFay/ansible.git

#-- Jump into Ansible directory:
cd $HOME/personal/github/ansible

#-- Create Ansible Vault password file:
touch passwd.txt

echo "Enter your Ansible Vault password:"
read -r response

#-- Write password into file:
echo $response > passwd.txt

#-- Start playbook:
ansible-playbook set-up-dev-devices-playbook.yml --vault-password-file ./passwd.txt --ask-become-pass -i inventory --limit 'arch_dev_device'

