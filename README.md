# macos-playbooks

This is Ansible playbook meant to provision a personal machine running macOS.

- Target: macOS

See also [Hiroya-W/dotfiles](https://github.com/Hiroya-W/dotfiles).

## Install dependencies

Install XCode command line tools.

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
