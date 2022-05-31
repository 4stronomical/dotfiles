#! /bin/bash

sudo apt install zsh polybar bspwm git terminator neofetch rxvt-unicode picom
cp ./.zshrc ~/.zshrc
cp ./.Xdefaults ~/.Xdefaults
git clone https://github.com/dylanaraps/wal
sudo cp ./wal/wal /usr/bin/wal
sudo cp -r bspwm ~/.config/
sudo cp -r sxhkd ~/.config/
if [[ ! -d ~/.config/polybar ]]
then
	mkdir ~/.config/polybar
fi
sudo cp -r cuts ~/.config/polybar/
chsh -s $(which zsh)
rm -rf ./wal
