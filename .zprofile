# Homebrew
eval "$('/opt/homebrew/bin/brew' 'shellenv')"

# OrbStack
source $HOME/.orbstack/shell/init.zsh 2>/dev/null

# TheFuck
eval $('/opt/homebrew/bin/thefuck' '--alias')

# Rust
source $HOME/.cargo/env

# Conda
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        source "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
