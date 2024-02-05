#! /usr/bin/sh

sudo apt-get update
yes | sudo apt-get install tmux fish

curl -sS https://starship.rs/install.sh | sh

cp ~/dotfiles/.tmux.conf .
cp -R ~/dotfiles/.config .

chsh /usr/bin/fish

