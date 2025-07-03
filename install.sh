#/bin/bash/

sudo pacman -S thunar fish fastfetch wofi waybar wayland qpwgraph kitty hyprlock hyprpaper hyprland firefox code
cp -r ./hypr/* ~/.config/hypr/
cp ./kitty/* ~/.config/kitty/
cp ./waybar/* ~/.config/waybar/
cp ./wofi/* ~/.config/wofi/
cp ./fish/* ~/.config/fish/
reboot