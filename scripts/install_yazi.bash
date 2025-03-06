if ! [ -r ~/.software ]; then
  mkdir -p ~/.software/
fi
git clone https://github.com/sxyazi/yazi.git ~/.software/yazi/
cd ~/.software/yazi/
cargo build --release --locked
cp target/release/yazi target/release/ya /usr/local/bin/
