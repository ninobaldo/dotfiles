# dotfiles


Para iniciar

```bash
cat <<'EOF' | tee initial.sh
#!/bin/bash
# ---------------
# Cria e configura chezmoi
# ----------------------------------------
set -e

DOTFILES_DIR="$HOME/.dotfiles"

if ! [ -x "$(command -v git)" ]; then
  sudo pacman -Sy git --noconfirm
fi

if ! [ -x "$(command -v chezmoi)" ]; then
  sudo pacman -Sy chezmoi --noconfirm
fi

if ! [[ -d "$DOTFILES_DIR" ]]; then
  git clone git@github.com:ninobaldo/dotfiles.git "$DOTFILES_DIR"
fi

if ! [[ -f "$HOME/.config/chezmoi/chezmoi.yaml" ]]; then
  mkdir -p "$HOME/.config/chezmoi"

  echo "sourceDir: $HOME/.dotfiles" >> "$HOME/.config/chezmoi/chezmoi.yaml"
  echo "git:" >> "$HOME/.config/chezmoi/chezmoi.yaml"
  echo "  autoPush: true" >> "$HOME/.config/chezmoi/chezmoi.yaml"
fi
EOF

chmod +x initial.sh
./initial.sh
```
