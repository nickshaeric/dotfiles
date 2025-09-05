# Nicksha's .zshrc

# Starship Prompt
eval "$(starship init zsh)"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Eza (better ls) -----
alias ls="eza --icons=always"
export EZA_CONFIG_DIR="$HOME/.config/eza"

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

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/nicksha/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Bob (Neovim version manager)
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
