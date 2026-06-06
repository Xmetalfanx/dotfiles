#######################################################################
## Variables for alias files 

zsh_config_dir="$HOME/.config/zsh"


atuin_aliases="$zsh_config_dir/atuin_aliases.zsh"
docker_aliases="$zsh_config_dir/docker_aliases.zsh"
dust_aliases="$zsh_config_dir/dust_aliases.zsh"
git_aliases="$zsh_config_dir/git_aliases.zsh"
list_aliases="$zsh_config_dir/list_aliases.zsh"
misc_aliases="$zsh_config_dir/misc_aliases.zsh"
nix_aliases="$zsh_config_dir/nix_aliases.zsh"
yt_aliases="$zsh_config_dir/yt_aliases.zsh"

## End of Variables for alias files
#########################################################################

## Loads the alias files
load_alias_file "$atuin_aliases" "zsh atuin aliases"
load_alias_file "$docker_aliases" "zsh docker aliases"
load_alias_file "$dust_aliases" "zsh dust aliases"
load_alias_file "$git_aliases" "zsh git aliases"
load_alias_file "$list_aliases" "zsh listing aliases"
load_alias_file "$nix_aliases" "zsh nix package manager aliases"
load_alias_file "$yt_aliases" "zsh yt aliases"



###############################################################################
# Other aliases

alias grep="grep --color=auto"
alias pkill9="sudo pkill -9"
alias kill9="sudo kill -9"
alias mkdir="mkdir -pv"

alias zshreset="source ~/.zshrc"

# for Fuzzy Find
alias fp='fzf --layout reverse --preview "bat --color=always {}"'
alias fzf='fzf --layout reverse'


# for files command
alias file_mt="file --mime-type"
alias file_short="file -b"
alias file_mts="file --mime-type -b"

