# ZSH Path
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump"
# ZSH Theme
ZSH_THEME=""
# Starship Init
eval "$(starship init zsh)"
# ZSH Plugin
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-ssh
)
# Oh-My-ZSH Init
source $ZSH/oh-my-zsh.sh

# Alias
alias sd='sudo'
alias cls='clear'
alias tac='tail -r'
alias py='python3'
alias ping='ping -c 10'
