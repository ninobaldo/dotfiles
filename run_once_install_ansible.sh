#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"


if ! [ -x "$(command -v ansible)" ]; then
  sudo pacman -S ansible --noconfirm
fi

# if [[ -f "$DOTFILES_DIR/requirements.yml" ]]; then
#   cd "$DOTFILES_DIR"
#
#   ansible-galaxy install -r requirements.yml
# fi

# ansible-playbook "$DOTFILES_DIR/setup.yml" --ask-become-pass

echo "Ansible installation complete."

