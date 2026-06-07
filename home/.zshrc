##############################################################
## Functions

# function to load custom config files
load_custom_configs() {
  zsh_custom_configs="$zsh_config_dir/configs"
# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"


export TERM=xterm-256color

  local purpose=$1
  local config_file=$2
  local full_config_file="${zsh_custom_configs}/${config_file}.configs"

  echo -e "Loading $purpose config file:   ${full_config_file}"
  . $full_config_file
}

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





















