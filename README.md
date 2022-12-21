Dotfiles
========
```
$ sudo dnf install -y git
$ sudo dnf install -y epel-release
$ sudo dnf install -y ansible
```

```
$ ansible-playbook -i inventories/nbchk/hosts.ini playbooks/pc.yml --extra-vars='ansible_sudo_pass=<your-sudo-pass>'
```
