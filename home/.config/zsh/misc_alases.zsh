# Convert all audio/video files in pwd to mp3 at 256kbps
alias tomp3='setopt localoptions null_glob; for f in *.{mp4,mkv,webm,flv,avi,wmv,mov,ogg,wav,flac,aac,m4a,opus}; do [ -e "$f" ] && ffmpeg -i "$f" -vn -ab 256k -ar 44100 -y "${f%.*}.mp3"; done'

# abogen
alias abogen="pyenv activate abogen-env && abogen-cli"

# Upgrade Astro
alias astro_upgrade="yarn dlx @astrojs/upgrade"

# to fix vscode freezing
alias fixcode="sudo pkill -9 code && sudo pkill -9 gnome-keyring && code"
