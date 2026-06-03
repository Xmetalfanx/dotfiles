# for nix package manager and allowing unfree apps like xnviewmp
export NIXPKGS_ALLOW_UNFREE=1

# --- pyenv setup ---
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
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

# for Atuin 
if command -v atuin >/dev/null 2>&1; then
  eval "$(atuin init zsh)"
fi
#########################################################################
## Function to load alias files 

load_alias_file() {
  local file="$1"
  local description="$2"

  if [[ -f "$file" ]]; then
    echo "Loading $description - $file"
    source "$file"
  else
    echo "Could not load $description - $file"
  fi
}

## End of function 
#################################################################


# Aliases
zsh_aliases="/home/$USER/.config/zsh/zsh_aliases.zsh"

load_alias_file "$zsh_aliases"

# for intelli-shell
eval "$(intelli-shell init zsh)"

# for starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# # for nix
# if [[ -n "$IN_NIX_SHELL" ]]; then
#   NIX_INDICATOR="%F{green}[nix-shell]%f "
# else
#   NIX_INDICATOR=""
# fi

# PROMPT="${NIX_INDICATOR}%~ %# "
######################################################
# for atuin
atd_5hr() {
  echo "Entries to be removed:"
  atuin search '.*' --before "5 hour ago"

  echo "Deleting..."
  atuin search --delete '.*' --before "5 hour ago" || true
}


atd_12hr() {
  echo "Entries to be removed:"
  atuin search '.*' --before "12 hour ago"

  echo "Deleting..."
  atuin search --delete '.*' --before "12 hour ago" || true
}

atd_day() {
  echo "Entries to be removed:"
  atuin search '.*' --before "1 days ago"

  echo "Deleting..."
  atuin search --delete '.*' --before "1 days ago" || true
}

atdw() {
  echo "Entries to be removed:"
  atuin search '.*' --before "7 days ago"

  echo "Deleting..."
  atuin search --delete '.*' --before "7 days ago" || true
}


atdm() {
  echo "Entries to be removed:"
  atuin search '.*' --before "30 days ago"

  echo "Deleting..."
  atuin search --delete '.*' --before "30 days ago" || true
}

# End For Atuin
#####################################################
