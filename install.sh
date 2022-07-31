#! /bin/bash

#Default packages
sudo apt install zsh polybar bspwm git terminator neofetch rxvt-unicode picom wget ranger feh

#Nala
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y

#Copying shell appearance
cp ./.zshrc ~/.zshrc
cp ./.Xdefaults ~/.Xdefaults

#Installing wal
git clone https://github.com/dylanaraps/wal
sudo cp ./wal/wal /usr/bin/wal
sudo cp -r bspwm ~/.config/
sudo cp -r sxhkd ~/.config/

#Installing polybar-themes
git clone https://github.com/adi1090x/polybar-themes.git
chmod +x polybar-themes/setup.sh

#Changing shell
chsh -s $(which zsh)

#Cleanup
rm -rf ./wal
