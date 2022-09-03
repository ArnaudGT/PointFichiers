#!/bin/bash

git clone https://github.com/StevenBlack/hosts.git ~/PointFichiers/Scripts-Installation/Hosts 
cd ~/PointFichiers/Scripts-Installation/Hosts
echo "#requirements.txt"
pip3 install --user -r requirements.txt
echo "#testUpdateHostsFile.py"
python3 testUpdateHostsFile.py
echo "#updateHostsFile.py"
python3 updateHostsFile.py -e gambling
cd ~
