# My Dotfiles

## Message 
- This was inspired by [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)

## Requirnments 

- it says Stow but i used XStow in my Linux Mint tests.
- Git 

## To use 

1.  Backup configs (just in case)
2.  make a folder to store things (example - /home/$USER/dotfiles)
3.  git init, inside that folder
4.  Move desired config files into that folder
    - This is based on the Home folder ... 
    - The structure HAS TO match the structure in /home/$USER
      - this means .config has to be there ... if something is in the root of /home/$USER, it has to be in the root folder (/home/$USER/dotfiles "root" in this example)
5.  