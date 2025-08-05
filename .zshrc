## Shell Config
# ZSH Path
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="~/.cache/zsh/zcompdump"
# ZSH Theme
ZSH_THEME=""
# Starship Init
eval "$(starship init zsh)"
# ZSH Plugin
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
# Oh-My-ZSH Init
source $ZSH/oh-my-zsh.sh
# Hello Init
clear
echo "Welcome to Sequoia"
# Alias
alias sd='sudo'
alias cls='clear'
alias clear='printf "\033c"'
alias tac='tail -r'
alias py='python3'
alias pysage='python-sage'

## HomeBrew Config
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
export HOMEBREW_NO_EMOJI=true
export HOMEBREW_NO_ENV_HINTS=true

## App Config
# My Own
export PATH="/Users/edgeworthlau/.local/bin:$PATH"
# GNU Make
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
# Node@22
#export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
# Basic Calc
export PATH="/opt/homebrew/opt/bc/bin:$PATH"
# Broot
source /Users/edgeworthlau/.config/broot/launcher/bash/br
# TheFuck
eval $(thefuck --alias)
# Conda
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
