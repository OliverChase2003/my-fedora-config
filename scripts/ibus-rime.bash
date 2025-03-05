sudo dnf install ibus-rime
if [ ! [ -r ~/.config/ibus/rime/ ]]; then
  mkdir -p ~/.config/ibus/rime
fi
cp ./rime/default.custom.yaml ~/.config/ibus/rime/
git clone https://github.com/iDvel/rime-ice.git ~/.config/ibus/rime --depth 1
ibus restart
