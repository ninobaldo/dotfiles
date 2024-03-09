#!/bin/bash

if ! [ -x "$(command -v ansible)" ]; then
  sudo pacman -S ansible --noconfirm
fi


# ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."

