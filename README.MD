# My Dotfiles

## Message

- This was inspired by [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)

## Requirements

- it says Stow but i used XStow in my Linux Mint tests.
- Git

## Usage

### To use (this IS more of a reminder to myself, rather than a tutorial)

1. Backup configs (just in case)
2. make a folder to store things (example - /home/$USER/dotfiles)
3. git init, inside that folder
4. Move desired config files into that folder
    - This is based on the Home folder ...
    - The structure HAS TO match the structure in /home/$USER
      - this means .config has to be there ... if something is in the root of /home/$USER, it has to be in the root folder (/home/$USER/dotfiles "root" in this example)

### What to edit

- Once a file is in the dotfiles location where it is supposed to be, EDIT THAT and then "stow ." (not every time, but when new configs are there... no need to do that everytime)

- ** IF you make a mistake and edit the actual files in .config/... for instance .. i think it becomes "un-stowed" and no longer backed up ...
  - IF this happens the fix is easy
    - at this point the actual file in (example) .config has the NEWEST change the file in ~/dotfiles/ (again example location) doesn't have ... just move the actual NEWEST EDITED config to ~/dotfiles
      - NOT sure if "stow ." is needed ... maybe the actual config file in "~/.config" MAY need to be removed or the stow commands ... i think has an "--append" type command (note: I NEED TO LOOK INTO THIS last comment)
  