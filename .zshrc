# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"

# Load and initialise completion system
autoload -Uz compinit
compinit


# Aliases 
alias bfg="java -jar /home/$USER/Downloads/bfg-1.14.0.jar"

alias grep="grep --color=auto"

alias pkill="sudo pkill -9"
alias mkdir="mkdir -pv"


#
export TERM=xterm-256color
