nix_search() {
    nix search nixpkgs "$1"
}

nix_add() {
    nix profile add "nixpkgs#$1" --impure
}

nix_upgrade() {
    nix profile upgrade "$1"
}

nix_remove() {
    nix profile remove "$1"
}

nix_list() {
    nix profile list
}

nix_cleanup() {
	nix-store --gc
}

nix_wipe_history1() {
	nix profile wipe-history
}

nix_wipe_history2() {
	nix-collect-garbage -d
}
