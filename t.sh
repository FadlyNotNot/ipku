#!/bin/bash
apt install lolcat -y
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/nishikazekazata/hah/main/"
echo -e " [INFO] Downloading Update File"
sleep 2
rm -rf /tmp/menu
wget -O /tmp/menu-master.zip "${REPO}limit/menu.zip" >/dev/null 2>&1
    mkdir /tmp/menu
    mkdir /menuku
    7z e -paskykenza123 /tmp/menu-master.zip -o/tmp/menu/ >/dev/null 2>&1
    chmod +x /menuku/*
    mv /menuku/* /usr/sbin/
rm -rf /root/menu/*
rm -rf /root/menu
rm -rf menu.zip
echo -e " [INFO] Update Successfully"
rm -rf update.sh
sleep 2
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu￼
