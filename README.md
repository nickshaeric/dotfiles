# dotfiles

## Dotfiles setup

Clone and deploy:
```bash
git clone https://github.com/nickshaeric/dotfiles ~/dotfiles
cd ~/dotfiles
```

## Home-level configs
```bash
stow tmux
stow vim
stow zsh
```

## Config-level
```bash
stow -t ~/.config .config
```

