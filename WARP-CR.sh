#!/usr/bin/env bash
sleep 5
green(){ echo -e "\033[32m\033[01m$1\033[0m";}
yellow(){ echo -e "\033[33m\033[01m$1\033[0m";}

info1(){
UA_Browser="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36"
v6=$(curl -s6m3 https://ip.gs -k)
v4=$(curl -s4m3 https://ip.gs -k)
AE="阿联酋（United Arab Emirates）";AU="澳大利亚（Australia）";BG="保加利亚（Bulgaria）";BR="巴西（Brazil）";CA="加拿大（Canada）";CH="瑞士（Switzerland）";CL="智利（Chile)";CN="中国（China）";CO="哥伦比亚（Colombia）";DE="德国（Germany)";ES="西班牙（Spain)";FI="芬兰（Finland）";FR="法国（France）";GB="英国（United Kingdom）";HK="香港（Hong Kong）";ID="印度尼西亚（Indonesia）";IE="爱尔兰（Ireland）";IL="以色列（Israel）";IN="印度（India）";IT="意大利（Italy）";JP="日本（Japan）";KR="韩国（South Korea）";LU="卢森堡（Luxembourg）";MX="墨西哥（Mexico）";MY="马来西亚（Malaysia）";NL="荷兰（Netherlands）";NZ="新西兰（New Zealand）";PH="菲律宾（Philippines）";RO="罗马尼亚（Romania）";RU="俄罗斯（Russian）";SA="沙特（Saudi Arabia）";SE="瑞典（Sweden）";SG="新加坡（Singapore）";TW="台湾（Taiwan）";US="美国（United States）";VN="越南（Vietnam）";ZA="南非（South Africa）"
if [[ -n $v4 ]]; then
wgcfv4=$(curl -s4 https://www.cloudflare.com/cdn-cgi/trace -k | grep warp | cut -d= -f2)
eg4=$(curl -s --user-agent "${UA_Browser}" https://api.ip.sb/geoip/$v4 -k | awk -F "country_code" '{print $2}' | awk -F "region_code" '{print $1}' | sed "s/[,\":}]//g")
g4=$(eval echo \$$eg4)
fi
if [[ -n $v6 ]]; then
wgcfv6=$(curl -s6 https://www.cloudflare.com/cdn-cgi/trace -k | grep warp | cut -d= -f2)
eg6=$(curl -s --user-agent "${UA_Browser}" https://api.ip.sb/geoip/$v6 -k | awk -F "country_code" '{print $2}' | awk -F "region_code" '{print $1}' | sed "s/[,\":}]//g")
g6=$(eval echo \$$eg6)
fi
mport=`warp-cli --accept-tos settings 2>/dev/null | grep 'WarpProxy on port' | awk -F "port " '{print $2}'`
s5ip=`curl -sx socks5h://localhost:$mport ip.gs -k`
egj=$(curl -s --user-agent "${UA_Browser}" https://api.ip.sb/geoip/$S5ip -k | awk -F "country_code" '{print $2}' | awk -F "region_code" '{print $1}' | sed "s/[,\":}]//g")
s5gj=$(eval echo \$$egj)
}
s5c(){
warp-cli --accept-tos register >/dev/null 2>&1 && sleep 2
if [[ -e /etc/wireguard/ID ]]; then
warp-cli --accept-tos set-license $(cat /etc/wireguard/ID) >/dev/null 2>&1
fi
}

BEndpoint(){
grep Endpoint /etc/wireguard/wgcf.conf
if [[ -n $(grep -w 2606:4700:d0::a29f:c001 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c001/2606:4700:d0::a29f:c002/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c002 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c002/2606:4700:d0::a29f:c003/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c003 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c003/2606:4700:d0::a29f:c004/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c004 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c004/2606:4700:d0::a29f:c005/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c005 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c005/2606:4700:d0::a29f:c006/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c006 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c006/2606:4700:d0::a29f:c007/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c007 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c007/2606:4700:d0::a29f:c008/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c008 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c008/2606:4700:d0::a29f:c009/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c009 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c009/2606:4700:d0::a29f:c001/g" /etc/wireguard/wgcf.conf
fi
if [[ -n $(grep -w 2606:4700:d0::a29f:c101 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c101/2606:4700:d0::a29f:c102/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c102 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c102/2606:4700:d0::a29f:c103/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c103 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c103/2606:4700:d0::a29f:c104/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c104 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c104/2606:4700:d0::a29f:c105/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c105 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c105/2606:4700:d0::a29f:c106/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c106 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c106/2606:4700:d0::a29f:c107/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c107 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c107/2606:4700:d0::a29f:c108/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c108 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c108/2606:4700:d0::a29f:c109/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 2606:4700:d0::a29f:c109 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/2606:4700:d0::a29f:c109/2606:4700:d0::a29f:c101/g" /etc/wireguard/wgcf.conf
fi
if [[ -n $(grep -w 162.159.192.1 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.1/162.159.192.2/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.2 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.2/162.159.192.3/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.3 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.3/162.159.192.4/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.4 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.4/162.159.192.5/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.5 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.5/162.159.192.6/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.6 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.6/162.159.192.7/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.7 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.7/162.159.192.8/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.8 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.8/162.159.192.9/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.192.9 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.192.9/162.159.193.10/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.10 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.10/162.159.192.1/g" /etc/wireguard/wgcf.conf
fi
if [[ -n $(grep -w 162.159.193.1 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.1/162.159.193.2/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.2 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.2/162.159.193.3/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.3 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.3/162.159.193.4/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.4 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.4/162.159.193.5/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.5 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.5/162.159.193.6/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.6 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.6/162.159.193.7/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.7 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.7/162.159.193.8/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.8 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.8/162.159.193.9/g" /etc/wireguard/wgcf.conf
elif [[ -n $(grep -w 162.159.193.9 /etc/wireguard/wgcf.conf) ]]; then
sed -i "s/162.159.193.9/162.159.193.1/g" /etc/wireguard/wgcf.conf
fi
systemctl restart wg-quick@wgcf
}

info1
WGCFV4(){
while true; do
info1
[[ "$eg4" = "dd4" ]] && green "恭喜！目前wgcf-ipv4的IP为($v4)，WARP默认地区为$g4，设置的地区为$(eval echo \$dd4)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (BEndpoint && yellow "遗憾！目前wgcf-ipv4的IP($v4)，WARP默认地区为$g4，设置的地区为$(eval echo \$dd4) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
done
}
WGCFV6(){
while true; do
info1
[[ "$eg6" = "dd6" ]] && green "恭喜！目前wgcf-ipv6的IP为($v6)，WARP默认地区为$g6，设置的地区为$(eval echo \$dd6)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (BEndpoint && yellow "遗憾！目前wgcf-ipv6的IP($v6)，WARP默认地区为$g6，设置的地区为$(eval echo \$dd6) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
done
}
SOCKS5warp(){
while true; do
info1
[[ "$egj" = "ddj" ]] && green "恭喜！目前socks5的IP为($s5ip)，WARP默认地区为$s5gj ，设置的地区为$(eval echo \$ddj)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (s5c && yellow "遗憾！目前socks5的IP($s5ip)，WARP默认地区为$s5gj，设置的地区为$(eval echo \$ddj) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
done
}
SOCKS5wgcf4(){
while true; do
info1
[[ "$egj" = "ddj" ]] && green "恭喜！目前socks5的IP为($s5ip)，WARP默认地区为$s5gj，设置的地区为$(eval echo \$ddj)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (s5c && yellow "遗憾！目前socks5的IP($s5ip)，WARP默认地区为$s5gj，设置的地区为$(eval echo \$ddj) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
[[ "$eg4" = "dd4" ]] && green "恭喜！目前wgcf-ipv4的IP为($v4)，WARP默认地区为$g4，设置的地区为$(eval echo \$dd4)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (BEndpoint && yellow "遗憾！目前wgcf-ipv4的IP($v4)，WARP默认地区为$g4，设置的地区为$(eval echo \$dd4) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
done
}
SOCKS5wgcf6(){
while true; do
info1
[[ "$egj" = "ddj" ]] && green "恭喜！目前socks5的IP为($s5ip)，WARP默认地区为$s5gj，设置的地区为$(eval echo \$ddj)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (s5c && yellow "遗憾！目前socks5的IP($s5ip)，WARP默认地区为$s5gj，设置的地区为$(eval echo \$ddj) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
[[ "$eg6" = "dd6" ]] && green "恭喜！目前wgcf-ipv6的IP为($v6)，WARP默认地区为$g6，设置的地区为$(eval echo \$dd6)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (BEndpoint && yellow "遗憾！目前wgcf-ipv6的IP($v6)，WARP默认地区为$g6，设置的地区为$(eval echo \$dd6) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
done
}
WGCFV4V6(){
while true; do
info1
[[ "$eg4" = "dd4" ]] && green "恭喜！目前wgcf-ipv4的IP为($v4)，WARP默认地区为$g4，设置的地区为$(eval echo \$dd4)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (BEndpoint && yellow "遗憾！目前wgcf-ipv4的IP($v4)，WARP默认地区为$g4，设置的地区为$(eval echo \$dd4) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
[[ "$eg6" = "dd6" ]] && green "恭喜！目前wgcf-ipv6的IP为($v6)，WARP默认地区为$g6，设置的地区为$(eval echo \$dd6)，下轮检测将在你设置的60秒后自动执行" && sleep 60s || (BEndpoint && yellow "遗憾！目前wgcf-ipv6的IP($v6)，WARP默认地区为$g6，设置的地区为$(eval echo \$dd6) ，下轮检测将在你设置的30秒后自动执行" && sleep 30s)
done
}
[[ $(warp-cli --accept-tos status 2>/dev/null ) =~ 'Connected' && $wgcfv6 =~ on|plus ]] && green "双栈WARP循环执行：刷socks5与wgcf-ipv6的IP" && SOCKS5wgcf6
[[ $(warp-cli --accept-tos status 2>/dev/null ) =~ 'Connected' && $wgcfv4 =~ on|plus ]] && green "双栈WARP循环执行：刷socks5与wgcf-ipv4的IP" && SOCKS5wgcf4
if [[ $(warp-cli --accept-tos status 2>/dev/null ) =~ 'Connected' ]]; then
[[ ! $wgcfv6 =~ on|plus && ! $wgcfv4 =~ on|plus ]] && green "单栈WARP循环执行：刷socks5的IP" && SOCKS5warp
fi
[[ $wgcfv6 =~ on|plus && $wgcfv4 =~ on|plus ]] && green "双栈WARP单v4循环执行：仅刷wgcf-ipv4的IP" && WGCFV4
[[ $wgcfv6 = off && $wgcfv4 =~ on|plus ]] && green "单栈WARP循环执行：刷wgcf-ipv4的IP" && WGCFV4
[[ $wgcfv6 =~ on|plus && $wgcfv4 = off ]] && green "单栈WARP循环执行：刷wgcf-ipv6的IP" && WGCFV6
[[ -z $wgcfv6 && $wgcfv4 =~ on|plus ]] && green "单栈WARP循环执行：刷wgcf-ipv4的IP" && WGCFV4
[[ $wgcfv6 =~ on|plus && -z $wgcfv4 ]] && green "单栈WARP循环执行：刷wgcf-ipv6的IP" && WGCFV6
