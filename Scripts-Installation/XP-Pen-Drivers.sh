#!/bin/bash

cd ~/PointFichiers/
wget -O xp-pen.tar.gz --referer https://www.xp-pen.fr/ 'https://www.xp-pen.fr/download/file/id/1945/pid/292/ext/gz.html'
mkdir ~/PointFichiers/Scripts-Installation/XP-pen
tar -x -f  xp-pen.tar.gz -C ~/PointFichiers/Scripts-Installation/XP-pen --strip-components 1
cd ~/PointFichiers/Scripts-Installation/XP-pen
sudo sh install.sh
cd ~
