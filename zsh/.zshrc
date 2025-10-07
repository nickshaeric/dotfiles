# Nicksha's .zshrc

# Alias
alias vim=nvim
alias vi="nvim"
alias skim="open -a Skim"
alias ls="ls -C -t -U -A -p --color=auto"
alias src="source ~/dotfiles/zsh/.zshrc"

# Load colors for prompt
autoload -U colors && colors

# Vi-style keybindings
bindkey -v

# TMUX-Sessionizer
bindkey -s ^f "tmux-sessionizer\n"

# Basic auto/tab complete:
autoload -U compinit && compinit
zmodload zsh/complist

# Prompt setup
setopt PROMPT_SUBST  # allow variables to expand in PS1
PS1="%{$fg[magenta]%}%~%{$reset_color%} \$ "

# Scripts
export PATH="$HOME/.local/scripts:$PATH"


# GO Export
export PATH=$PATH:$HOME/.local/opt/go/bin
export PATH=$PATH:$HOME/go/bin

# Curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Single track download (uses ~/.config/yt-dlp/config)
alias ytdl-audio='yt-dlp'

# Playlist download (overrides output template and enables playlist)
alias ytdl-playlist='yt-dlp --yes-playlist -o "~/Music/%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s"'
export PATH="/opt/homebrew/bin:$PATH"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/nicksha/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Bob (Neovim version manager)
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

