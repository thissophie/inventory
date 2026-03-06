#!/bin/bash

set -euf

export ANSIBLE_USER=$(id -un)
./ansible-playbook.sh `hostname` --connection=local "$@"
