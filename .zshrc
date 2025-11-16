# ZSH Configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Path Configuration
export PATH="$HOME/.local/bin:$PATH"

# FZF Configuration
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
eval "$(fzf --zsh)"
_fzf_compgen_path() { fd --hidden --exclude .git . "$1" }
_fzf_compgen_dir() { fd --type=d --hidden --exclude .git . "$1" }

# Aliases
alias ls="eza --color=always --git --icons=always"
alias open="xdg-open"
alias cd="z"
alias vim="nvim"

# Tools Initialization
eval "$(zoxide init zsh)"  # Smarter directory navigation
eval "$(thefuck --alias)"  # Command correction
