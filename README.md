# My Dotfiles  
Some config files for consistency across different machines for terminal and vim  

Files are setup to take advantage of the utility 'stow'.
Clone into ~.dotfiles
Use `stow <foldername>` to have the named configuration symlinked to the right place

May need to reference https://github.com/forteleaf/sketkchybar-with-aerospace/ for proper setup instructions for sketchybar-aerospace integration (working instructions to be ported)

# Requirements  
 - GNU stow installed
 - [Vundle](https://github.com/VundleVim/Vundle.vim)  
 - Universal C-Tags  https://ctags.io/  
 - Powerline Fonts for your Host OS  
 (ie. Install fonts into Windows if you are opening a shell into your linux machine using something like Putty)  

# Installation
Follow VundleVim's ["Quick Start"](https://github.com/VundleVim/Vundle.vim#quick-start) steps to install Vundle package manager  
Clone this repsitory's dotfiles   
Open `vim` and run `:PluginInstall`
