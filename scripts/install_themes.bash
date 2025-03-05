if ! [ -r ~/.themes ]; then
  mkdir -p ~/.themes/
fi
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1 ~/Downloads/WhiteSur-gtk-theme
cd ~/Downloads/WhiteSur-gtk-theme
./install.sh -r
./install.sh -c dark -s nord -l -m --shell -p 60 -h bigger normal
sudo ./tweaks.sh -g
cd ${DIR}
