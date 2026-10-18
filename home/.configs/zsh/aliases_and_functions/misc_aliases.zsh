# Convert all audio/video files in pwd to mp3 at 256kbps
alias tomp3='setopt localoptions null_glob; for f in *.{mp4,mkv,webm,flv,avi,wmv,mov,ogg,wav,flac,aac,m4a,opus}; do [ -e "$f" ] && ffmpeg -i "$f" -vn -ab 256k -ar 44100 -y "${f%.*}.mp3"; done'

# abogen
alias abogen="pyenv activate abogen-env && abogen-cli"

# Upgrade Astro
alias astro_upgrade="yarn dlx @astrojs/upgrade"

# to fix vscode freezing
alias fixcode="sudo pkill -9 code && sudo pkill -9 gnome-keyring && code"


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

