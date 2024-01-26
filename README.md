# Ansible Dev Environment
**Carefully ;) this is actually a work in progress.**
First attempt is to get my Linux Ubuntu machine ready.  

---
<br>

# Testing
Personally I don't think it works for you completely without customizing it by yourself.  
I have tried to copy some playbooks for my system, but not one of them was running flawlessly. But you have a base with this, from where you can start to learn and build your own playbooks.
My playbooks (I think so) are not perfect. That's fine for me because that is my first work with Ansible and I just want to get done installing my dev environment.

This repo has a MIT license, so feel free to do everything what you want with it - use it for your own, in your company, copy, share....

Requirements:
* Debian based Linux environment (Debian, Ubuntu, PopOS etc.)
* Docker has to be installed on your machine

For testing a Dockerfile is included. If you like, you can change my user specific data to yours.  
Keep in mind, that the SSH-keys will not work for you. You have to set up your own.

As you have set up your stuff, try it in Docker. With this you can fail, learn, throw the container away and create a new one.
Here is the way to test...
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

For further testing, I have set up a Ubuntu virtual machine (VM). There I can test against a real environment.
Just clone your clean installed VM and run the playbooks in the clone. By this, you have the same 'throw away after testing' environment like with Docker.

---
<br>

Starting by a clean Ubuntu installation.
Install updates shown in GUI and reboot the system.
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
ansible
```


