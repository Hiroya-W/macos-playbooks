# osx-playbooks

This is Ansible playbook meant to provision a personal machine running OSX.
It is intended to run locally on a fresh OSX.

- Target Distro: OSX

See also [Hiroya-W/dotfiles](https://github.com/Hiroya-W/dotfiles).

## Install dependencies

Install Ansible in the Python virtual environment using poetry.

```bash
poetry install
```

Install roles and collections from Ansible Galaxy.

```bash
make deps
```

## Run playbook

Start the provisioning the system.

```bash
make system
```

(Optional) Install applications.

```bash
make apps
```

You can use the tags defined in the playbook to execute only specific roles.

```bash
make system args="--tags HERE_TAGS"
```
