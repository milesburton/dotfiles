#!/usr/bin/sh

RED='\033[0;31m'
NC='\033[0m' # No Color
HEADER="$RED[fishylinux]$NC"
SCRIPT_DIR="$(dirname "$(realpath "$0")")"  # Get the directory of the script itself

echo "$HEADER executing script from $SCRIPT_DIR"
echo "$HEADER installing via apt"

sudo apt-get update
sudo apt-get -y install tmux fish

echo "$HEADER...done installing via apt"

echo "$HEADER installing starship..."

curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "$HEADER...done installing starship"

echo "$HEADER copying config..."

cp "$SCRIPT_DIR/.tmux.conf" ~
cp -R "$SCRIPT_DIR/.config" ~

echo "$HEADER...done copying config"

echo "$HEADER changing shell..."
chsh -s /usr/bin/fish
echo "$HEADER...done changing shell"
