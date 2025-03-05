if ! [ -r ~/.software ]; then
  mkdir -p ~/.software/
fi
git clone https://github.com/sxyazi/yazi.git ~/.software/yazi/
cd ~/.software/yazi/
cargo build --release --locked
mv target/release/yazi target/release/ya ~/.local/bin/
