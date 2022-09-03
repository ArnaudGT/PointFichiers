#!/bin/bash
echo "             -------------------             "
echo "             C'est partit Frèro!             "
echo "             -------------------             "
echo "                                             "

sudo pacman -Syu

echo "----------------"
echo "// Repo Steam //"
echo "----------------"

echo "----------"
echo "// Paru //"
echo "----------"

sudo pacman -S --needed base-devel
git clone https://github.com/Morganamilo/paru.git ~/PointFichiers/Paru
cd ~/PointFichiers/Paru
makepkg -si
cd ~

echo "------------"
echo "// Pacman //"
echo "------------"

PKGS=(
'gnome-disk-utility'
'noto-fonts-emoji'
'lib32-nvidia-utils'
'nvidia-settings'
'neofetch'
'python-pip'
'blender'
'steam'
'lutris'
'p7zip'
'mpv'
'wine'
'winetricks'
'flatpak'
'firefox'
'ffmpegthumbs'
'ntfs-3g'
'gwenview'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "---------------------------------------"
echo "// Installations des packets Flatpak //"
echo "---------------------------------------"

sh ~/PointFichiers/Flatpak.sh

echo "-------------"
echo "// Konsave //"
echo "-------------"

sudo pip install konsave
konsave --noconfirm
cd ~/PointFichiers/
konsave -i Argama.knsv
cd ~
konsave -a Argama

echo "-------------"
echo "// Polices //"
echo "-------------"

FONTS=(
'ttf-bitstream-vera'
'ttf-croscore'
'ttf-dejavu'
'ttf-droid'
'gnu-free-fonts'
'ttf-ibm-plex'
'ttf-liberation'
'ttf-linux-libertine'
'noto-fonts gsfonts'
'ttf-roboto'
'tex-gyre-fonts'
'tex-gyre-fonts'
'noto-fonts-cjk'
'adobe-source-han-sans-otc-fonts'
'adobe-source-han-serif-otc-fonts'
'ttf-sazanami'
'ttf-hanazono'
'otf-ipafont'
)

for FONT in "${FONTS[@]}"; do
    echo "INSTALLING: ${FONT}"
    sudo pacman -S "$FONT" --noconfirm --needed
done

echo "----------------"
echo "// Youtube-DL //"
echo "----------------"

sudo python3 -m pip install -U yt-dlp

echo "--------------------"
echo "// Fichiers Hosts //"
echo "--------------------"

git clone https://github.com/StevenBlack/hosts.git ~/PointFichiers/Hosts 
cd ~/PointFichiers/Hosts
echo "#requirements.txt"
pip3 install --user -r requirements.txt
echo "#testUpdateHostsFile.py"
python3 testUpdateHostsFile.py
echo "#updateHostsFile.py"
python3 updateHostsFile.py -e gambling
cd ~

echo "--------------------"
echo "// XP-Pen Drivers //"
echo "--------------------"

cd ~/PointFichiers/
wget -O xp-pen.tar.gz --referer https://www.xp-pen.fr/ 'https://www.xp-pen.fr/download/file/id/1945/pid/292/ext/gz.html'
mkdir ~/PointFichiers/XP-pen
tar -x -f  xp-pen.tar.gz -C ~/PointFichiers/XP-pen --strip-components 1
cd ~/PointFichiers/XP-pen
sudo sh install.sh
cd ~

echo "-----------------------------"
echo "// Activation du Bluetooth //"
echo "-----------------------------"

sudo systemctl enable bluetooth.service

exit
