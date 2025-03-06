if ! [ -r ~/.local/share/fonts/ ]; then
  mkdir -p ~/.local/share/fonts/
fi
cp ./font/* ~/.local/share/fonts/ -r
