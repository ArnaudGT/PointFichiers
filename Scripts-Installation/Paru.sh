#!/bin/bash
sudo pacman -S --needed base-devel
git clone https://github.com/Morganamilo/paru.git ~/PointFichiers/Scripts-Installation/Paru
cd ~/PointFichiers/Scripts-Installation/Paru
makepkg -si
cd ~
