# --- pyenv setup ---
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# --- end pyenv setup ---

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"

# "Fix" for bat issue (related to the way zsh completion is handled i think)
fpath=(~/.zsh/completions $fpath)

# Load and initialise completion system
autoload -Uz compinit
compinit

export TERM=xterm-256color

# Homebrew & other PATH-modifying tools (make sure they append, not overwrite)
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# for zoxide 
eval "$(zoxide init zsh)"

# Aliases
zsh_aliases="/home/$USER/.config/zsh/zsh_aliases.zsh"
if [ -f ${zsh_aliases} ]; then
  echo "Loading zsh aliases"
  source ${zsh_aliases}
fi

# for intelli-shell
eval "$(intelli-shell init zsh)"

# for starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

eval "$(atuin init zsh)"
