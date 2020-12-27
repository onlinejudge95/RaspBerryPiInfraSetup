#!/bin/bash


if [[ $# -lt 2 ]]; then
    echo "Usage:"
    echo "bin/provision_commandcenter user ~/.ssh/id_rsa"
    exit 1
fi

USER=$1
PRIVATE_KEY_FILE_PATH=$2

ansible-lint \
    -x 301 \
    ansible/playbooks/commandcenter.yml

if [[ $? -ne 0 ]]; then
    exit 1
fi

ansible-playbook \
    --ask-become-pass \
    --inventory-file ansible/inventory/raspberrypi \
    --user $USER \
    --private-key $PRIVATE_KEY_FILE_PATH \
    ansible/playbooks/commandcenter.yml
