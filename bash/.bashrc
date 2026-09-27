# BASH CONFIGURATION

export HISTCONTROL=ignoreboth:erasedups
# Tamaño del historial
export HISTSIZE=10000
export HISTFILESIZE=20000

# --- Editor por defecto ---
export EDITOR="nvim"

# --- Tema de BAT (Catppuccin Frappe/Mocha) ---
export BAT_THEME="Catppuccin Frappe"

# --- FZF (Fijo en Mocha para consistencia) ---
export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}' \
--color=fg:#cdd6f4,bg:-1,hl:#cba6f7:bold,fg+:#cdd6f4:bold,bg+:#585b70,hl+:#cba6f7:bold,info:#89b4fa:bold,prompt:#94e2d5:bold,pointer:#94e2d5:bold,marker:#94e2d5:bold,spinner:#94e2d5,header:#94e2d5:bold"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git --exclude Library'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Habilitar atajos de FZF si el archivo existe
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# --- Aliases ---
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza --color=always --long --git --icons=always"
alias fetch="fastfetch"

# --- Zoxide (Navegación inteligente) ---
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
  alias cd="z"
fi

# --- Starship ---
if command -v starship &>/dev/null; then
  export STARSHIP_CONFIG="$HOME/.dotfiles/starship/.config/starship_mocha.toml"
  eval "$(starship init bash)"
fi

fastfetch
