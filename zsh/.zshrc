# zsh@mbookair
bindkey -v

# alias
alias vi="nvim"
alias vim="nvim"
alias ls="ls -A -C -p --color=auto"
alias grep='grep --color=auto'
alias zath='zathura'

# oh-my-zsh
export ZSH="$HOME/dotfiles/oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# config
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# bin
export PATH="$HOME/.local/bin:$PATH"

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# doomemacs
export PATH="$HOME/.config/emacs/bin:$PATH"

# scripts
export PATH="$HOME/.local/scripts:$PATH"

# tmux-sessionizer
bindkey -s ^f "tmux-sessionizer\n"

# template script
bindkey -s ^t "template\n"
