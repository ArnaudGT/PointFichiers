flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

Flatpaks=(
'dev.goats.xivlauncher'
'com.heroicgameslauncher.hgl'
'org.kde.krita'
'net.davidotek.pupgui2'
'com.discordapp.Discord'
'com.github.tchx84.Flatseal'
'org.qbittorrent.qBittorrent'
'net.rpcs3.RPCS3'
'org.citra_emu.citra'
'org.duckstation.DuckStation'
'org.libretro.RetroArch'
'org.ryujinx.Ryujinx'
'org.yuzu_emu.yuzu'
)

for Flatpak in "${Flatpaks[@]}"; do
    echo "Installation de: ${Flatpak}"
    flatpak install -y "$Flatpak"
done
