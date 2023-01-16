#! /bin/bash

#Default packages
sudo apt -y install bspwm polybar neofetch rxvt-unicode picom wget ranger feh rofi curl wget btop cava

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
bash polybar-themes/setup.sh

#Oh-my-zsh install (original one-liner)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Cleanup
rm -rf ./wal
