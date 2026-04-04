alias nix_search="nix-env -qaP"
alias nix_install="nix-env -iA nixpkgs."

# should i change this to uninstall?  make a duplicate?
alias nix_remove="nix-env -e"
alias nix_uninstall="nix-env -e"

# upgrade a package
alias nix_upgrade="nix-env -uA nixpkgs."

# upgrade all package
# ## doesn't need an arguments
alias nix_upgrade_all="nix-env -u"
