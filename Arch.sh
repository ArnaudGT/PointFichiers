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

sh ~/PointFichiers/Scripts-Installation/Paru.sh

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

sh ~/PointFichiers/Scripts-Installation/Flatpak.sh

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

sh ~/PointFichiers/Scripts-Installation/Hosts.sh

echo "--------------------"
echo "// XP-Pen Drivers //"
echo "--------------------"

sh ~/PointFichiers/Scripts-Installation/XP-Pen-Drivers.sh

echo "-----------------------------"
echo "// Activation du Bluetooth //"
echo "-----------------------------"

sudo systemctl enable bluetooth.service

exit
