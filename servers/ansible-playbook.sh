#!/bin/sh

set -euf

if [ "$#" -lt 1 ]; then
    echo "You must specify at least a limit (e.g. ansible-up.sh hostname)"
    exit
fi

PLAYBOOKS="site.yml"

LIMIT_FILTER=$1
shift

ANSIBLE_USER=${ANSIBLE_USER:-$(id -un)}

ansible-playbook \
    --diff \
    --inventory-file=hosts \
    --become \
    --vault-password-file vault_password \
    --user $ANSIBLE_USER \
    --limit=$LIMIT_FILTER \
    $PLAYBOOKS \
    "$@"



