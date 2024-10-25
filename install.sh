#!/usr/bin/sh

RED='\033[0;31m'
NC='\033[0m' # No Color
HEADER="$RED[fishylinux]$NC"
SCRIPT_DIR="$(dirname "$(realpath "$0")")"  # Get the directory of the script itself

echo "$HEADER installing via apt"

sudo apt-get update
yes | sudo apt-get install tmux fish

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

# Check if pnpm is installed
if [ -x "$(command -v pnpm)" ]; then
  # Check if package.json exists, if not, create it
  if [ ! -f "$SCRIPT_DIR/package.json" ]; then
    echo "$HEADER package.json not found, creating it..."
    echo '{}' > "$SCRIPT_DIR/package.json"
    echo "$HEADER...done creating package.json"
  fi

  # Install fish completion using pnpm
  echo "$HEADER installing fish completion..."
  # pnpm install-completion fish 
  echo "$HEADER...done installing fish completion"
else
  echo "$HEADER pnpm is not installed, skipping completion installation"
fi

