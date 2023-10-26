# shellcheck disable=SC2239
# Arch Install Script
# For use with Awesome WM
# After use of archinstall

# !!!!!!!!!
# This script + rc.lua have to be in ~/Downloads
# NOT in ~/Downloads/Arch_post_install
# for this to work.
# !!!!!!!!!

# Correcting keyboard - to Norwegian
sudo localectl set-x11-keymap no

# Add aliases
echo "# Custom Aliases from arch_post_install.sh" | cat >> ~/.bashrc
echo "alias off='shutdown now'" | cat >> ~/.bashrc
echo "alias restart='shutdown -r now'" | cat >> ~/.bashrc
echo "alias cdawesome='cd ~/.config/awesome/'" | cat >> ~/.bashrc

# Installing basic programs
sudo pacman -S --noconfirm  --needed dmenu alacritty networkmanager nm-connection-editor blueman light ntfs-3g bluez bluez-utils nemo nemo-fileroller git base-devel perl-IO-Compress

# Install Yay
sudo cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:wheel ./yay-git
cd yay-git
makepkg -si
sudo yay -Syu

# Configure awesome
mkdir ~/.config/awesome/
cd ~/.config/
git clone --recurse-submodules --remote-submodules --depth 1 -j 2 https://github.com/lcpz/awesome-copycats.git
mv awesome-copycats awesome
cd ~/Downloads
mv rc.lua ~/.config/awesome/rc.lua

# Configure light (enable changing screen brightness)
# You have to restart for this to work
sudo touch /etc/udev/rules.d/backlight.rules
sudo echo '"ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video $sys$devpath/brightness", RUN+="/bin/chmod g+w $sys$devpath/brightness"' | sudo tee --append /etc/udev/rules.d/backlight.rules
sudo usermod -a -G video $USER

# Installing programs with yay
# Spotify
# Codium
# Discord
yay -S --noconfirm spotify codium discord
