SHELL := /bin/bash

PLAYBOOK_DIR := playbooks
ANSIBLE_CMD := poetry run ansible
PLAYBOOK_CMD := poetry run ansible-playbook
GALAXY_CMD := poetry run ansible-galaxy

.PHONY: ping
ping:
	$(ANSIBLE_CMD) -m ping all

.PHONY: deps
deps:
	$(GALAXY_CMD) install -r roles/requirements.yml

.PHONY: check
check:
	$(PLAYBOOK_CMD) $(PLAYBOOK_DIR)/init.yml --syntax-check
	$(PLAYBOOK_CMD) $(PLAYBOOK_DIR)/init.yml --list-tasks
	$(PLAYBOOK_CMD) $(PLAYBOOK_DIR)/init.yml --ask-become-pass --check

.PHONY: init
init:
	$(PLAYBOOK_CMD) --ask-become-pass $(PLAYBOOK_DIR)/init.yml $(args)

.PHONY: system
system:
	$(PLAYBOOK_CMD) --ask-become-pass $(PLAYBOOK_DIR)/system.yml $(args)

.PHONY: apps
apps:
	$(PLAYBOOK_CMD) --ask-become-pass $(PLAYBOOK_DIR)/applications.yml $(args)
