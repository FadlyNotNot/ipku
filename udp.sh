#!/bin/bash
########## COLOR ##########
z="\033]93m"
w="\033]97m"
x="\e[0m"
UDPCORE="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
clear
echo -e ""
echo -e ""
echo -e " ${z}Apakah Anda Lanjut Ingin Menginstall UDP Custom ? ${x}"
read -p " ${w}Pilih Option${x} ${z}[ y/n ]${x} : " menu
case $menu in
y) clear ; wget --load-cookies /tmp/cookies.txt ${UDPCORE} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
x) clear ; menu ;;
esac
