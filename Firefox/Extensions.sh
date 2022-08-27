mkdir ~/PointFichiers/Firefox/Extensions
cd ~/PointFichiers/Firefox/Extensions

echo "----------------"
echo "// Extensions //"
echo "----------------"

PKGS=(
'https://addons.mozilla.org/firefox/downloads/file/3986147/bitwarden_password_manager.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3910598/canvasblocker.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3980848/clearurls.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3971429/cookie_autodelete.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3902154/decentraleyes.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3923300/facebook_container.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3932862/multi_account_containers.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3853325/history_cleaner.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3985341/return_youtube_dislikes.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3988785/search_by_image.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3978884/sponsorblock.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3956290/styl_us.xpi'
'https://addons.mozilla.org/firefox/downloads/file/3989793/ublock_origin.xpi'
)

for PKG in "${PKGS[@]}"; do
    echo "Téléchargement de: ${PKG}"
    wget "$PKG"
done

for file in ~/PointFichiers/Firefox/Extensions/*.xpi
do
    firefox "$file"
done
