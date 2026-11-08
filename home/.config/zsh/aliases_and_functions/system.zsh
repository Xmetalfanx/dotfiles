alias reload="exec zsh"                                # Reload current shell session
alias please="sudo $(fc -ln -1)"                       # Rerun last command as sudo
alias update="sudo apt update && sudo apt upgrade -y"  # Update packages (Debian/Ubuntu)
alias ports="netstat -tulanp"                          # Show open ports and listening services
alias topmem="ps aux --sort=-%mem | head"              # Show top memory-consuming processes
alias topcpu="ps aux --sort=-%cpu | head"              # Show top CPU-consuming processes
