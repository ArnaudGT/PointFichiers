#!/bin/bash

sudo pip install konsave
konsave --noconfirm
cd ~/PointFichiers/
konsave -i Argama.knsv
cd ~
konsave -a Argama
