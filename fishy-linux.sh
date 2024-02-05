#! /usr/bin/sh

echo "dotfile installing via apt"

sudo apt-get update
yes | sudo apt-get install tmux fish

echo "...done installing via apt"

echo "dotfile installing starship..."

curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "...done installing starship"

echo "dotfile copying config..."

cp ./.tmux.conf ~
cp -R ./.config ~

echo "...done copying config"

echo "dotfile changing shell..."
chsh /usr/bin/fish
echo "...done changing shell"

