bioutil - Apples biometric software for touchID etc
tmutil - Apples time machine software


git config -l -> (in a repo) prints the setted options in config file of project
git config -e -> (in a repo) open config file in setted editor



If something fails in playbooks, look in /retry-files. You can start them again with the option `--limit @<Retryfile>`.


## Start Playbooks:
All hosts at once:
```shell
ansible-playbook set-up-dev-devices-playbook.yml --vault-password-file ./passwd.txt --ask-become-pass -i inventory
```

Arch:
```shell
ansible-playbook set-up-dev-devices-playbook.yml --vault-password-file ./passwd.txt --ask-become-pass -i inventory --limit 'arch_dev_device'
```

Ubuntu:
```shell
ansible-playbook set-up-dev-devices-playbook.yml --vault-password-file ./passwd.txt --ask-become-pass -i inventory --limit 'ubuntu_dev_device'
```

macOS:
```shell
ansible-playbook set-up-dev-devices-playbook.yml --vault-password-file ./passwd.txt --ask-become-pass -i inventory --limit 'macos_dev_device'
```
