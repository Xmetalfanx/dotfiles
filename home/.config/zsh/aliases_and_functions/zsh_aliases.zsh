typeset -A alias_files

alias_files=(
    atuin   "zsh atuin aliases"
    docker  "zsh docker aliases"
    dust    "zsh dust aliases"
    git     "zsh git aliases"
    list    "zsh listing aliases"
    misc    "zsh misc aliases"
    nix     "zsh nix package manager aliases"
    yt      "zsh yt aliases"
)

for file desc in ${(kv)alias_files}; do
    load_alias_file \
        "$zsh_config_dir/aliases_and_functions/${file}_aliases.zsh" \
        "$desc"
done

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

