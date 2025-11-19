# Homebrew shellenv
eval "$(/opt/homebrew/bin/brew shellenv)"

# ──────────────────────────────
# Rose Pine color palette
# ──────────────────────────────
export base="#000000"
export surface="#1f1d2e"
export overlay="#26233a"
export muted="#6e6a86"
export subtle="#908caa"
export text="#e0def4"
export love="#eb6f92"
export gold="#f6c177"
export rose="#ebbcba"
export pine="#31748f"
export foam="#9ccfd8"
export iris="#c4a7e7"
export highlightLow="#21202e"
export highlightMed="#403d52"
export highlightHigh="#524f67"

export FZF_DEFAULT_OPTS="
	--color=fg:$subtle,bg:$base,hl:$rose
	--color=fg+:$text,bg+:$overlay,hl+:$rose
	--color=border:$highlightMed,header:$pine,gutter:$base
	--color=spinner:$gold,info:$foam
	--color=pointer:$iris,marker:$love,prompt:$subtle"
