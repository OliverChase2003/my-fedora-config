if ! [ -r ~/.local/share/fonts/ ]; then
  mkdir -p ~/.local/share/fonts/
fi
cp ./fonts/* ~/.local/share/fonts/
