# dotfiles

## Dotfiles setup

Clone and deploy:
```bash
git clone https://github.com/nickshaeric/dotfiles ~/dotfiles
cd ~/dotfiles
```

# Home-level configs
```bash
stow zsh
stow tmux
```

# Config-level
```bash
stow -t ~/.config .config
```

