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
zsh_aliases="/home/$USER/.config/zsh/zsh_aliases.zsh"
if [ -f ${zsh_aliases} ]; then
  echo "Loading zsh aliases"
  source ${zsh_aliases}
fi


#
export TERM=xterm-256color
