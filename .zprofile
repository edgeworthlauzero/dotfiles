# Homebrew
eval "$('/opt/homebrew/bin/brew' 'shellenv')"

# OrbStack
source "$HOME/.orbstack/shell/init.zsh" 2>/dev/null

# TheFuck
eval "$('/opt/homebrew/bin/thefuck' '--alias')"

# Rust
source "$HOME/.cargo/env" 2>/dev/null

# Python
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
