# macos-playbooks

This is Ansible playbook meant to provision a personal machine running macOS.

- Target: macOS

See also [Hiroya-W/dotfiles](https://github.com/Hiroya-W/dotfiles).

## Install dependencies

Install Xcode command line tools.

```bash
xcode-select --install
```

Install Homebrew.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Ansible using brew.

```bash
brew install ansible
```

For Apple silicon Mac, install Rosetta2.

```bash
softwareupdate --install-rosetta
```

## Before run playbook

Set your password to `ansible_become_password` in `inventory/group_vars/all.yml`.

```yml:inventory/group_vars/all.yml
ansible_becom_password: "p@ssw0rd"
```

## Run playbook

Start the provisioning the system.

```bash
make playbook
```

You can use the tags defined in the playbook to execute only specific roles.

```bash
make playbook args="--tags HERE_TAGS"
```
