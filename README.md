Dotfiles
========
```
$ sudo dnf install -y git
$ sudo dnf install -y epel-release
$ sudo dnf install -y ansible
```

```
$ ansible-playbook -i inventories/nbchk/hosts.ini playbooks/pc.yml --extra-vars='ansible_sudo_pass=<your-sudo-pass>'

$ ansible-playbook -i inventories/nbchk/hosts.ini playbooks/idcfc.yml --ask-vault-pass --extra-vars="{ "update_os_packages": true }"
```

```
Add bastion host to /etc/hosts
```
