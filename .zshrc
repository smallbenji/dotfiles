export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="crunch"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.volta/bin:$PATH"
export PATH="$HOME/.config/herd-lite/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export PHP_INI_SCAN_DIR="/home/smallbenji/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

eval "$(zoxide init zsh)"
source <(fzf --zsh)