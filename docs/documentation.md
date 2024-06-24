# Ansible Dev Environment
This works actually for Ubuntu Linux.  
On actual hardware it takes from zero OS to fully ready to work environment in less than 45 minutes, on an old laptop from 2014 in less than 1,5 hours.  

To see what I do before I run this playbook, read my [whole installation process](https://github.com/MannyFay/set-up-dev-machine).

Personally I don't think it works for you completely without customizing it by yourself.  
I have tried to copy some playbooks for my system, but not one of them was running flawlessly.  

But you will have a base with this, from where you can start to learn and build your own playbooks.  
My playbooks (I think so) are not perfect. That's fine for me because that is my first work with Ansible and I just want to get done installing my dev environment.
If you'd like to refactor or do a session with me, feel free ;)

This repo has a MIT license, so feel free to do everything what you want with it - use it for your own, in your company, copy, share....

---
<br>

# Testing
Requirements:
* Debian based Linux environment (Debian, Ubuntu, PopOS etc.) in Docker or on your machine
* Docker has to be installed on your machine

For testing a Dockerfile is included. If you like, you can change my user specific data to yours.  
Keep in mind, that the SSH-keys will not work for you. You have to set up your own.

In `set-up-environment.yml`, `- include_tasks: tasks/google-chrome.yml` will not work if your machine is a Mac, because of the ARM architecture.  
`- include_tasks: tasks/docker.yml` will not work too, because you cannot install Docker inside of Docker ;)  

As you have set up your stuff, try it in Docker. With this you can fail, learn, throw the container away and create a new one.  

<br>

## Non-Interactive Container Usage
Clone repo into your home directory:
```bash
git clone https://github.com/MannyFay/ansible.git
```
Jump into the ~/ansible directory:
```bash
cd ~/ansible
```
Create your own SSH files and **definetly encrypt them with Ansible Vault because they are not ignored by Git**:
```bash
ansible-vault encrypt <your-file>
```
Create the file `passwd.txt` and save your Ansible Vault password inside (this file is ignored by Git, but if you finished testing, you should delete it):
```bash
vi passwd.txt
```
If you don't have installed Ansible already, you can do it with:
```bash
chmod +x install-ansible-deb.sh
```
Run the script:
```bash
./install-ansible-deb.sh
```
Create the Docker image:
```bash
docker build .
```
Test the playbooks:
```bash
docker run <press-tab-and-select-the-image-with-<none>-as-name>
```
Watch the process.

<br>

## Interactive Container Usage
If you want to jump into the container and run it by hand...
Build the image:
```bash
docker build .
```
Jump into:
```bash
docker run -it <image-id> /bin/bash
```
Run the playbooks:
```bash
ansible-playbook $TAGS set-up-environment.yml --vault-password-file ./passwd.txt
```
If you use a login password for OS:
```bash
ansible-playbook $TAGS set-up-environment.yml --vault-password-file ./passwd.txt --ask-become-pass
```

For further testing, I have set up an Ubuntu virtual machine (VM). There I can test against a real environment.
Just clone your clean installed VM and run the playbooks in the clone. By this, you have the same 'throw away after testing' environment like with Docker.

---
<br>

# Virtual Machine and Live System
Starting by a clean Debian based installation, install updates shown in GUI and reboot the system.  

Install Git:
```bash
sudo apt install git
```
Clone repo into your home directory:
```bash
git clone https://github.com/MannyFay/ansible.git
```
Jump into the ~/ansible directory:
```bash
cd ~/ansible
```
Create the file `passwd.txt` and save your Ansible Vault password inside:
```bash
vi passwd.txt
```
Make the `install-ansible-deb.sh` script executable:
```bash
chmod +x install-ansible-deb.sh
```
Run the script:
```bash
./install-ansible-deb.sh
```
Run the playbooks:
```bash
ansible-playbook $TAGS set-up-environment.yml --vault-password-file ./passwd.txt --ask-become-pass
```

---
<br>

# Post Installation Processes
In my case are actually some post installation processes necessary.  

Install Rust (enable `# Source Rust` after installation in .zshrc):
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
Install Alacritty:
```bash
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty
```
Install Polypane:
```bash
https://github.com/firstversionist/polypane/releases/download/v17.1.0/polypane_17.1.0_amd64.deb
```
Install NordPass:
```bash
sudo snap install nordpass
sudo snap connect nordpass:password-manager-service
```
If there is something is wrong with ownerships:
```bash
sudo chown -R owner:group directory
```

## VMware
Boost performance even more:
Open Command Prompt as administrator:
```bash
bcdedit /set hypervisorlaunchtype off
# To set it on again if needed:
bcdedit /set hypervisorlaunchtype auto
```
Disable memory integritty (in GUI):
`Windows Security > Device Security > Core Isolation details`  
Power Shell:
```bash
powercfg /powerthrottling disable /path 'C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe'
```
Reboot machine.

---
<br>

# Thanks :)
For contribution:
* [Dani Holzer](https://github.com/DaniHolzer)

