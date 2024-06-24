#!/usr/bin/env bash

#-- Update and upgrade the system:
sudo apt update && \
sudo apt full-upgrade -y && \
sudo apt autoremove -y && \
sudo apt -f install -y && \
sudo apt clean

#-- Install Python3 and pip3:
sudo apt install python3-pip -y

#-- Install sshpass:
sudo apt install sshpass -y

#-- Install Ansible:
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

#-- Install Git:
sudo apt install git -y

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
$response >> passwd.txt

#-- Start playbook:
ansible-playbook set-up-dev-devices-playbook.yml --vault-password-file ./passwd.txt --ask-become-pass -i inventory --limit 'ubuntu_dev_device'
