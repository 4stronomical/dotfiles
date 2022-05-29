#! /bin/bash

sudo apt install zsh polybar bspwm git terminator neofetch
cp ./.zshrc ~/.zshrc
git clone https://github.com/dylanaraps/wal
sudo cp ./wal/wal /usr/bin/wal
sudo cp -r bspwm ~/.config/
sudo cp -r sxhkd ~/.config/
if [[ ! -d ~/.config/polybar ]]
then
	mkdir ~/.config/polybar
fi
sudo cp -r cuts ~/.config/polybar/
rm -rf ./wal
