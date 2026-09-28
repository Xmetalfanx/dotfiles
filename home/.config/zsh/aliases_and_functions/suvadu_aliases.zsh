alias suvgc='suv gc'
alias suvgc_vacuum='suv gc --vacuum'

alias suvs='suv search'
alias suvh='suv history'

# this works ... use as a template
## suv delete "^lazygit$" --regex


###########################################
# functions related to deletion

suvd() {
    echo -e "Deleting the exact match $1"
    suv delete "^$1$" --regex
}

suvdr() {
    echo -e "Deleting the exact match $1"
    suv delete "^$1$" --dry-run --regex
}


suvdy() {
    echo -e "Deleting the exact match $1"
    suv delete "^$1$" --regex -y
}

##################################################
#  to get stats 
# for output to user
suv_detect_dup_commands() {
    suv history --json -n 10000 |
    jq -r '.command' |
    sort |
    uniq -d
}

suv_detect_dup_commands_number() {
    suv history --json -n 10000 |
    jq -r '.command' |
    sort |
    uniq -c |
    sort -nr
}

# end stat getting functions
############################################################

############################################################
# Mass deletion/purging functions

# do not call this from the CLI
suv_delete_function() {

    # clear
    echo -e "Purging ${1} from ${duration}, from cli history"
    suv delete --before "${duration}" "${1}" --regex
}

# this is the main function to call
suv_mass_delete() {
    duration="2 days ago"

    suv_delete_function "clear"
    suv_delete_function "^ls$"
    suv_delete_function "^am"
    suv_delete_function "^flatpak"
    suv_delete_function "^sudo fsck /dev/sdb1"
    suv_delete_function "^zshreset"
    suv_delete_function "^d1"
    suv_delete_function "^dust"
    suv_delete_function "^z "
    suv_delete_function "git status"
    suv_delete_function "git switch"
    suv_delete_function "source"
    suv_delete_function "^nix"
    suv_delete_function "^brew"

    suv_delete_function "^rm"
    suv_delete_function "^sudo rm"

}

# this is for stuff like common typos
suv_delete_temp_stuff() {
    duration="today"

    suv_delete_function "^["
}

# End Mass deletion/purging functions
############################################################