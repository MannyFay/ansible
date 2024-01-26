# Ansible
**Carefully ;) this is actually a work in progress.**
First attempt is to get my Linux Ubuntu machine ready.  

---
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
Make the setup script executable:
```bash
chmod +x set-up-environment.sh
```
Run the script:
```bash
./set-up-environment.sh
```
