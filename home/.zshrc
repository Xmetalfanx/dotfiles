##############################################################
## Functions

# function to load custom config files
load_custom_configs() {
  zsh_custom_configs="$zsh_config_dir/configs"

  local purpose=$1
  local config_file=$2
  local full_config_file="${zsh_custom_configs}/${config_file}.configs"

  echo -e "Loading $purpose config file:   ${full_config_file}"
  . $full_config_file
}

# function to load alias files
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
##############################################################

zsh_config_dir="/home/$USER/.config/zsh"
zsh_aliases_dir="$zsh_config_dir/aliases_and_functions"


# Aliases
zsh_aliases="$zsh_aliases_dir/zsh_aliases.zsh"


echo -e "\nLoading Aliases"
load_alias_file "$zsh_aliases"














#################################################################
# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"


##################################################################

echo -e "\nLoading Custom Config files"

# load_custom_configs "Pyenv" "pyenv"
load_custom_configs "Fix for bat command problem," "bat_problem_fix"
load_custom_configs "nix - allow unfree package installs" "nix_allow_unfree"
load_custom_configs "Zoxide" "zoxide"
load_custom_configs "Homebrew" "homebrew"
load_custom_configs "Starship" "starship"
load_custom_configs "Intelli-shell" "intelli_shell"
#load_custom_configs "Nix package manager, custom prompt" "nix_prompt"

export TERM=xterm-256color
