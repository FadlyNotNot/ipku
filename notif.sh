#!/bin/bash
clear
echo -e "   ┌────────────────────────────────────────┐" | lolcat
echo -e "   │                 MASUKAN TOKEN                    " | lolcat
echo -e "   └────────────────────────────────────────┘" | lolcat
echo ""
read -rp "     Token Bot " -e Token
read -p "     Chat ID " -e ID
echo ""
echo -e "   └────────────────────────────────────────┘" | lolcat
clear
CHATID="$ID"
KEY="$Token"
TIME="10"
JAM="$(date +'%Y-%m-%d')"
WKT="$(date +'%H:%M:%S')"
clear
echo -e "   ┌────────────────────────────────────────┐" | lolcat
echo -e "   │                 INPORT DATA MU                    " | lolcat
echo -e "   └────────────────────────────────────────┘" | lolcat
echo ""
read -p "     Username " : -e Login
read -p "     Harga " : -e Harga
read -p "     User IP " : -e LIP
read -p "     User Quota " : -e LIQ
read -p "     Expired " : -e exp
echo ""
echo -e "   └────────────────────────────────────────┘" | lolcat
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
}
clear