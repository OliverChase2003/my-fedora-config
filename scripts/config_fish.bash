cp ./fish/config.fish ~/.config/fish/
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
sudo dnf install fzf fd bat
