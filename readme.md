## Fiskesprell arch post-install script
### What does it do?
**1.** Changes keyboard to the norwegian layout  
**2.** Adds 3 of my frequently used aliases, 'off', 'restart' and 'cdawesome'  
**3.** Installs the following programs:  
>**Dmenu** - For running programs with super + r  
**Network manager** - Connect to the internet with Wi-Fi  
**Blueman** - Connect to bluetooth  
**Ntfs-3g** - Enables mounting of ntfs drives  
**Nemo** - My preferred file manager  
**Git** - You know what this is :)  
**Perl-IO-Compress** - Enables zip and unzip from the terminal  
**Yay** - Enables the use of the AUR  
**Awesome** - Awesome Window Manager - a tiling wm.  
**Light** - Program to adjust screen brightness  
**Spotify** - Listen to music  
**Codium** - FOSS version of VSCode  
**Discord** - Instant messaging  

**4.** Configures awesome with "my" keybindings and look  
**5.** Configures light so you can adjust brightness with keyboard shortcuts

### NB: This script + rc.lua have to be in ~/Downloads. NOT ~/Downloads/arch_post_install  
### NB: This script assumes you've already got sddm (or any greeter) already installed.  
### NB: This script has not been tested at all :)  

I got the awesome layout(s) from https://github.com/lcpz/awesome-copycats
