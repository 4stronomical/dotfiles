#! /bin/bash

sudo apt install zsh polybar bspwm git terminator neofetch rxvt-unicode picom
cp ./.zshrc ~/.zshrc
cp ./.Xdefaults ~/.Xdefaults
git clone https://github.com/dylanaraps/wal
sudo cp ./wal/wal /usr/bin/wal
sudo cp -r bspwm ~/.config/
sudo cp -r sxhkd ~/.config/
git clone https://github.com/adi1090x/polybar-themes.git
chmod +x polybar-themes/setup.sh
chsh -s $(which zsh)
rm -rf ./wal
