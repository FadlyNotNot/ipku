#!/bin/bash
########## COLOR ##########
x='\e[0m'
z='\e033[93m`
y='\e033[97`
clear
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
clear
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
<b> TRANSAKSI VMESS</b>
<code>────────────────────</code>
Username : <code>$Login</code>
Harga   : <code>$Harga</code>
Server : <code>$ISP</code>
User IP   : <code>$LIP</code>
User Quota  : <code>LIQ</code>
Exp   : <code>$exp</code>
<code>────────────────────</code>
<i>Nontifikasi Otomatis Dari FV STORE Bot</i>
"'&reply_markup={"inline_keyboard":[[{"text":"ᴏʀᴅᴇʀ⚡","url":"https://t.me/fdlyvpn_ID"}]]}'
    curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
