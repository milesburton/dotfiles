#! /usr/bin/sh

sudo apt-get update
yes | sudo apt-get install tmux fish

yes | curl -sS https://starship.rs/install.sh | sh

cp ./.tmux.conf ~
cp -R ./.config ~

chsh /usr/bin/fish

