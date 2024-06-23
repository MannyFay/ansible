#!/bin/zsh

#-- Install Xcode command line tools:
xcode-select --install

#-- Install Homebrew package manager:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Volumes/Users/manny/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#-- Install Ansible:
brew install ansible

#-- Install Git:
brew install git

#-- Create GitHub directory:
mkdir -p $HOME/personal/github/

#-- Jump into GitHub directory:
cd $HOME/personal/github

#-- Clone Ansible Project:
git clone https://github.com/MannyFay/ansible.git
#git clone dotfilesRepo

#-- Jump into Ansible directory:
cd foobar

#-- Create Ansible Vault password file:
touch passwd.txt

echo "Enter your Ansible Vault password:"
read -r response

#-- Write password into file:
$response >> passwd.txt

#-- Start playbook:
ansible-playbook main.yml --ask-become-pass
