#!/bin/bash

set -euf

export ANSIBLE_USER="patrick.quinn-graham"

./ansible-playbook.sh Mac-9QJ9D7.corp.kasada.io \
  --ask-become-pass \
  --connection=local "$@" 
