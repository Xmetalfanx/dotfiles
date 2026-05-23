#######################################################################
## Variables for alias files 

zsh_config_dir="$HOME/.config/zsh"

list_aliases="$zsh_config_dir/list_aliases.zsh"
nix_aliases="$zsh_config_dir/nix_aliases.zsh"
yt_aliases="$zsh_config_dir/yt_aliases.zsh"
atuin_aliases="$zsh_config_dir/atuin_aliases.zsh"

## End of Variables for alias files 
#########################################################################


## Loads the alias files 
load_alias_file "$list_aliases" "zsh listing aliases"
load_alias_file "$nix_aliases" "zsh nix package manager aliases"
load_alias_file "$yt_aliases" "zsh yt aliases"
load_alias_file "$atuin_aliases" "zsh atuin aliases"


###############################################################################
# Other misc aliases

alias grep="grep --color=auto"
alias pkill9="sudo pkill -9"
alias kill9="sudo kill -9"
alias mkdir="mkdir -pv"

alias zshreset="source ~/.zshrc"


# Aliases for docker
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'

# Convert all audio/video files in pwd to mp3 at 256kbps
alias tomp3='setopt localoptions null_glob; for f in *.{mp4,mkv,webm,flv,avi,wmv,mov,ogg,wav,flac,aac,m4a,opus}; do [ -e "$f" ] && ffmpeg -i "$f" -vn -ab 256k -ar 44100 -y "${f%.*}.mp3"; done'

# for Fuzzy Find
alias fp='fzf --layout reverse --preview "bat --color=always {}"'
alias fzf='fzf --layout reverse'


# for dust
alias d="dust -r"
alias d1="dust -d1"
alias d2="dust -d 2"
alias d3="dust -d 3"
alias d5="dust -d 5"

# to fix vscode freezing
alias fixcode="sudo pkill -9 code && sudo pkill -9 gnome-keyring && code"

# abogen
alias abogen="pyenv activate abogen-env && abogen-cli"

# Upgrade Astro
alias astro_upgrade="yarn dlx @astrojs/upgrade"


# for files command
alias fmt="file --mime-type"
alias fshort="file -b"
alias fmts="file --mime-type -b"

