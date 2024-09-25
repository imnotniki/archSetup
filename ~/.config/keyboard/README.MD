sudo pacman -S xorg-xev
sudo mkdir -p ~/.config/keyboard
copy .keyRemap into ~/.config/keyboard/.keyRemap
xmodmap ~/.config/keyboard/.keyRemap
