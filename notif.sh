#!/bin/bash
########## COLOR ##########
x="\e[0m"
z="\e033[93m"
y="\e033[97"
clear
function notif() {
echo -e "${z}┌────────────────────────────────────────┐${x}"
echo -e "${z}│                 MASUKAN TOKEN                  "
echo -e "${z}└────────────────────────────────────────┘${x}"
echo ""
read -rp "    Token Bot : " -e Token
read -rp "    Chat ID   : " -e ID
echo ""
echo -e "${z}└────────────────────────────────────────┘${x}" 
clear
CHATID="$ID"
KEY="$Token"
TIME="10"
JAM="$(date +'%Y-%m-%d')"
WKT="$(date +'%H:%M:%S')"
}
notif.sh
clear


function kirim() {
echo -e "${z}┌────────────────────────────────────────┐${x}"
echo -e "${z}│                 INPORT DATA MU                 "
echo -e "${z}└────────────────────────────────────────┘${x}"
echo -e ""
read -rp "     Username " : -e Login
read -rp "     Harga " : -e Harga
read -rp "     User IP " : -e LIP
read -rp "     User Quota " : -e LIQ
read -rp "     Expired " : -e exp
echo -e ""
echo -e "${z}└────────────────────────────────────────┘${x}"
clear

URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="
<code>────────────────────</code>
<b> ⚡NOTIF TRANSAKSI VMESS⚡ </b>
<code>────────────────────</code>
Username : <code>$Login</code>
Exp      : <code>$exp</code>
Harga    : <code>$Harga</code>
Server   : <code>$ISP</code>
User IP  : <code>$LIP</code>
User Quota  : <code>LIQ</code>
<code>────────────────────</code>
<i>Nontifikasi Otomatis Dari FV STORE Bot</i>
"'&reply_markup={"inline_keyboard":[[{"text":"⚡ ORDER ⚡","url":"https://t.me/fdlyvpn_ID"}]]}'
    curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}
notif.sh
clear
echo -e "${z}┌────────────────────────────────────────┐${x}"
echo -e "${z}│                 PILIH OPTION                  "
echo -e "${z}└────────────────────────────────────────┘${x}"
echo -e ""
echo -e "  [1] ADD NOTIF 
echo -e "  [2] KIRIM NOTIF
echo -e ""
echo -e "${z}└────────────────────────────────────────┘${x}" 
read -p " Pilih Option ( 1 - 2 ) " notif
case $notif in
1) clear ; notif ;;
2) clear ; kirim ;;
*) clear ; notif.sh ;;
