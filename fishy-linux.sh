sudo apt-get update
sudo apt-get install tmux 

curl -sS https://starship.rs/install.sh | sh

cp ~/dotfiles/.tmux.conf .
cp -R ~/dotfiles/.config .

chsh /usr/bin/fish

