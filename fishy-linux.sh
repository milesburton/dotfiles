#! /usr/bin/sh

RED='\033[0;31m'
NC='\033[0m' # No Color
HEADER="$RED[fishylinux]$NC"
echo "$HEADER installing via apt"

sudo apt-get update
yes | sudo apt-get install tmux fish

echo "$HEADER...done installing via apt"

echo "$HEADER installing starship..."

curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "$HEADER...done installing starship"

echo "$HEADER copying config..."

cp ./.tmux.conf ~
cp -R ./.config ~

echo "$HEADER...done copying config"

echo "$HEADER changing shell..."
chsh /usr/bin/fish
echo "$HEADER...done changing shell"

