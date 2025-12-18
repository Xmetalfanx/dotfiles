list_alias="/home/$USER/.config/zsh/list_aliases.zsh"

if [ -f ${list_alias} ]; then
  echo -e "Loading zsh listing aliases - ${list_aliases}"
  source ${list_alias}
fi


###############################################################################
# All Alases

alias grep="grep --color=auto"
alias pkill9="sudo pkill -9"
alias kill9="sudo kill -9"
alias mkdir="mkdir -pv"

alias zshreset="source ~/.zshrc"

# Aliases for yt-dlp
alias ytdl='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" '
alias ytdla="yt-dlp -x --audio-format mp3 --audio-quality 0"

# Aliases for docker
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'


# Atuin aliases
alias at="atuin"
## Atuin aliases for deleting and pruning history
alias ats='atuin search'
alias atddday='atuin search "." --before "1 day ago" --delete'
alias atdw='atuin search "." --before "7 days ago" --delete'
alias atdm='atuin search "." --before "30 days ago" --delete'

# Convert all audio/video files in pwd to mp3 at 256kbps
alias tomp3='setopt localoptions null_glob; for f in *.{mp4,mkv,webm,flv,avi,wmv,mov,ogg,wav,flac,aac,m4a}; do [ -e "$f" ] && ffmpeg -i "$f" -vn -ab 256k -ar 44100 -y "${f%.*}.mp3"; done'

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
