alias pn="pnpm"

alias pn_install="pnpm install"
alias pn_import="pnpm import"

# add a package
alias pn_add="pnpm add"
alias pn_add_dev="pnpm add -D"
alias pn_add_global="pnpm add -G"

alias pn_outdated="pnpm outdated"

# adheres to package.json in project, version wise
alias pn_upgrade="pnpm up"

# upgradees to latest version
alias pn_upgrade_latest="pnpm up --latest"

# this would need a -g for a global package, by the way
alias pn_remove="pnpm remove"

# ref: https://pnpm.io/cli/clean
# Safely remove node_modules contents from all workspace projects. Uses Node.js to remove directories, which correctly handles NTFS junctions on Windows without following them into their targets.

#In a workspace, node_modules directories are cleaned in the root and every workspace package. Non-pnpm hidden entries (e.g., .cache) inside node_modules are preserved.

# If a custom virtualStoreDir or globalVirtualStoreDir is configured and it resides inside the project root (but outside node_modules), it is also removed.

alias pn_cleanup="pnpm cleanup"


# ref: https://pnpm.io/cli/prune
# removes unnecessary dependencies
alias pn_prune="pnpm prune"


# ref: https://pnpm.io/cli/dedupe
# Perform an install removing older dependencies in the lockfile if a newer version can be used.

    # --check#

    # Check if running dedupe would result in changes without installing packages or editing the lockfile. Exits with a non-zero status code if changes are possible.
alias pn_dedupe="pnpm dedupe"