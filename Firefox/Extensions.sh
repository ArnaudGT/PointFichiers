mkdir ~/PointFichiers/Firefox/Extensions
cd ~/PointFichiers/Firefox/Extensions

echo "---------------------"
echo "// WGET Extensions //"
echo "---------------------"

PKGS=(
'https://addons.mozilla.org/firefox/downloads/file/3986147/bitwarden_password_manager-2022.8.0.xpi'
'python3-pip'
'blender'
'steam'
'lutris'
'wine'
'winetricks'
'librewolf'
)

for PKG in "${PKGS[@]}"; do
    echo "Téléchargement de: ${PKG}"
    wget "$PKG" --noconfirm
done
