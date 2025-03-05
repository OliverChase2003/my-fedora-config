sudo dnf update
## add source
### vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo >/dev/null
###

## install softwares in dnf
### terminal
sudo dnf install fish zsh git neovim android-tools -y ## terminal tools

### input method
sudo dnf install ibus-rime

### toolchains
sudo dnf install lua python3 gcc gdb make -y
sudo dnf install arm-none-eabi-gcc arm-none-eabi-gdb -y
sudo dnf install rustup cargo rustup-init -y
sudo dnf install java-21-openjdk -y

### appimage environment
sudo dnf install fuse fuse-devel -y

### gnome settings
sudo dnf install gnome-tweaks gnome-extensions -y

### apps
sudo dnf install google-chrome-stable qbittorrent -y
sudo dnf install mpv obs-studio bottles -y
sudo dnf install steam -y

### others
sudo dnf install google-noto-sans-cjk-fonts -y ## QQ-music need
sudo dnf install input-remapper

## install my softwares
sudo dnf install ./softwares/*.rpm -y
