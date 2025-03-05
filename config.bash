DIR=$(pwd)

## uninstall unused software
bash ./scripts/remove_packages.bash

## update dnf source
sudo dnf update

## install softwares in dnf
bash ./scripts/softwares_install.bash

## install fonts
bash ./scripts/fonts.bash

## config bash & zsh & git
cp ./home/* ~/

## config fish
bash ./scripts/config_fish.bash

## config nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim

## install & config yazi
bash ./scripts/install_yazi.bash
cd ${DIR}

## config gnome
### extensions
bash ./scripts/install_gnome_extensions.bash

### install themes & icons
bash ./scripts/install_themes.bash
cd ${DIR}

### config ibus-rime
bash ./scripts/ibus-rime.bash
cd ${DIR}
