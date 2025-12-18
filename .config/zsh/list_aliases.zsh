##################################################################
# Aliases for eza 

# Directory listing with icons, directories first
alias ls='eza --icons --group-directories-first'

# Directory-only listing with icons
# note to self: lsdirs because if i want to also play with "lsd" (ls/eza like command), 
    # "lsd" for the name here presents a problem 
alias lsdirs='eza --icons --group-directories-first -D'
alias directory='eza --icons --group-directories-first -D'


# Detailed long listing with git info
alias lslong='eza -lbGHF --group-directories-first --git'

# All files, detailed, with color scale and git info
alias lsall='eza -lbhHUuSa --group-directories-first --git --color-scale'
# All files, detailed, with extended attributes
alias lsall_ext='eza -lbhHUuSa@ --group-directories-first --git --color-scale'

# Tree view with icons
alias lst='eza -lT --group-directories-first --icons'
# Tree view, directories only, with icons
alias lstd='eza -lDT --group-directories-first --icons'

## Short listing, minimal columns, with icons
alias lsmin='eza -l --icons --no-permissions --no-filesize --no-time --no-user'
# Tree view, minimal columns, with icons
alias lsmint='eza -lT --icons --no-permissions --no-filesize --no-time --no-user'

################################################################################
# normal lsd
alias lsd="lsd --group-dirs=first"

# lsd tree view 
# for now i am not putting a depth limit on this 
alias lsd_t="lsd --group-dirs=first --tree"

# lsd long view 
alias lsd_a="lsd --group-dirs=first -a"


# -l: list mode 
# -h: human readable (size formats)
# these are list view but only have slected columns

alias lsd_list="lsd --group-dirs=first -lh --blocks name,size"
# same as above but tree view too 
# picked 4 levels deep randomly
alias lsd_list_tree="lsd --group-dirs=first -lh --tree --blocks name,size --depth 4"

# -S: sort by size (largest at the top, smallest at the bottom)
# -R: reverse sort (largest at the BOTTOM, smallest at the TOP)
alias lsd_size="lsd --group-dirs=first -lh --blocks name,size -S"
alias lsd_size_r="lsd --group-dirs=first -lh --blocks name,size -S -r"


# this is normal ls, it seems
# the only real use (not sure if "eza" has something like this) is because of "ls" being an alias for "eza"
alias lsdc="lsd --group-dirs=first --classic"

