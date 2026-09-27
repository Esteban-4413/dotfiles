# FISH CONFIGURATION

# Desactivar mensaje de bienvenida
set -g fish_greeting ""

# Variables de entorno y PATH
set -gx EDITOR nvim
fish_add_path $HOME/.ghcup/bin
fish_add_path $HOME/.local/bin

# Tema de sintaxis
fish_config theme choose "Catppuccin Mocha"

# Zoxide
if type -q zoxide
    zoxide init fish | source
end

# FZF
set -gx FZF_DEFAULT_OPTS "--preview 'bat --color=always --style=numbers --line-range=:500 {}' \
--color=fg:#cdd6f4,bg:-1,hl:#cba6f7:bold,fg+:#cdd6f4:bold,bg+:#585b70,hl+:#cba6f7:bold,info:#89b4fa:bold,prompt:#94e2d5:bold,pointer:#94e2d5:bold,marker:#94e2d5:bold,spinner:#94e2d5,header:#94e2d5:bold"

set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --exclude .git --exclude Library'
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_ALT_C_COMMAND "fd --type=d --hidden --strip-cwd-prefix --exclude .git"

set show_file_or_dir_preview "if test -d {}; eza --tree --color=always {} | head -200; else; bat -n --color=always --line-range :500 {}; end"

set -gx FZF_CTRL_T_OPTS "--preview '$show_file_or_dir_preview'"
set -gx FZF_ALT_C_OPTS "--preview 'eza --tree --color=always {} | head -200'"

if type -q fzf
    fzf --fish | source
end

# Aliases
alias cd="z"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza --color=always --long --git --icons=always"
alias fetch="fastfetch"

# Fastfetch al iniciar
if status is-interactive
    fastfetch
end

# Starship Prompt
if type -q starship
    set -gx STARSHIP_CONFIG "$HOME/.dotfiles/starship/.config/starship_mocha.toml"
    starship init fish | source
end
