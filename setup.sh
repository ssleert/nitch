#!/bin/sh

linkNerd="https://github.com/unxsh/nitch/releases/download/0.1.4/nitchNerd"
linkNoNerd="https://github.com/unxsh/nitch/releases/download/0.1.4/nitchNoNerd"

sudo rm -fv /usr/local/bin/nitch

echo ""

read -p "Use nerd font sumbols? (y/n): " symbolsYN
echo "Installation..."

case $symbolsYN in
  "y")
    wget $linkNerd
    chmod +x nitchNerd
    sudo mv nitchNerd /usr/local/bin/nitch
  ;;

  "n")
    wget $linkNoNerd
    chmod +x nitchNoNerd
    sudo mv nitchNoNerd /usr/local/bin/nitch
  ;;
esac

echo ""
