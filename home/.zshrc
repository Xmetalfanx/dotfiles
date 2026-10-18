. $HOME/dotfiles/home/.zsh_dotfiles_configs

declare_variables

echo -e "\nLoading Aliases"
load_alias_file "$main_zsh_aliases_file"

export TERM=xterm-256color

echo -e "\nLoading Custom Config files"

load_configs "Zap zsh Plugin Manager configs" "zap" "home"
load_configs "Homebrew" "homebrew" "home"
load_configs "Atuin" "atuin" "root"
load_configs "Fix for bat command problem," "bat_problem_fix"
load_configs "Halloy" "halloy"
load_configs "PNPM" "pnpm"
# load_configs "Starship" "starship"
load_configs "Intelli-shell" "intelli_shell"
load_configs "Zoxide" "zoxide"
load_configs "Homebrew" "homebrew"
load_configs "Zap zsh Plugin Manager configs" "zap"
# load_configs "Pyenv" "pyenv"

load_configs "Atuin" "atuin"
# load_configs "Suvadu" "suvadu"
load_configs "Vite" "vite"

# note: this is not 100% needed for nix to work, it seems
load_configs "Nix Package Manager" "nix"

##################################################################

