port: 7890
socks-port: 7891
allow-lan: true
mode: Rule
log-level: info
external-controller: 127.0.0.1:9090
proxies:
  - {name: 🇭🇰 Relay_🇭🇰HK-🇭🇰HK_1681 | 4.60Mb, server: kaizen-hk-4.cn0.me, port: 443, type: trojan, password: 18e513fe-f7f4-353d-84ca-bc9646fb2528mielink, skip-cert-verify: false, udp: true}
  - {name: 🇭🇰 Relay_🇭🇰HK-🇭🇰HK_1682 |12.67Mb, server: kaizen-hk-2.cn0.me, port: 443, type: trojan, password: 18e513fe-f7f4-353d-84ca-bc9646fb2528mielink, skip-cert-verify: false, udp: true}
  - {name: 🇯🇵 Relay_🇯🇵JP-🇯🇵JP_2059 |34.14Mb, server: gmegme.ml, port: 443, type: trojan, password: d48629f1-ac71-45ef-b325-37d73da258e8, skip-cert-verify: false, udp: true}
  - {name: 🇸🇬 Relay_🇸🇬SG-🇸🇬SG_2860 |18.06Mb, server: sg1.vless.co, port: 443, type: trojan, password: fastssh.com, skip-cert-verify: false, udp: true}


proxy-groups:
  - name: Proxies
    type: select
    proxies:
      - 🚀 HK
      - 🚀 SG
      - 🚀 JP
      - 🚀 US
      - 🚀 TW
      - 🇯🇵 JP
      - 🇺🇲 US
      - 🇩🇪 DE
      - 🇩🇪 DE 2
      - 🇩🇪 DE 3
      - 🇩🇪 DE 4
      - 🇩🇪 DE 5
      - 🇩🇪 DE 6
      - 🇩🇪 DE 7
      - 🇺🇲 US 2
      - 🇩🇪 DE 8
      - 🇩🇪 DE 9
      - 🇺🇲 US 3
      - 🇩🇪 DE 10
      - 🇩🇪 DE 11
      - 🇩🇪 DE 12
      - GB
      - 🇺🇲 US 4
      - 🇷🇺 RU
      - 🇺🇲 US 5
      - 🇺🇲 US 6
      - 🇺🇲 US 7
      - HR
      - 🇩🇪 DE 13
      - GB 2
      - 🇺🇲 US 8
      - 🇩🇪 DE 14
      - 🇺🇲 US 9
      - DIRECT
  - name: Apple
    type: select
    proxies:
      - DIRECT
      - Proxies
  - name: Telegram
    type: select
    proxies:
      - Proxies
      - 🚀 HK
      - 🚀 SG
  - name: Youtube
    type: select
    proxies:
      - Proxies
      - 🚀 HK
      - 🚀 US
  - name: Netflix
    type: select
    proxies:
      - Proxies
      - 🚀 HK
      - 🚀 SG
      - 🚀 JP
      - 🚀 US
      - 🚀 TW
  - name: GlobalMedia
    type: select
    proxies:
      - Proxies
      - 🚀 HK
      - 🚀 SG
      - 🚀 JP
      - 🚀 US
      - 🚀 TW
      - DIRECT
  - name: HKMTMedia
    type: select
    proxies:
      - DIRECT
      - Proxies
      - 🚀 HK
      - 🚀 TW
  - name: Final
    type: select
    proxies:
      - Proxies
      - DIRECT
  - name: 🚀 HK
    type: select
    proxies:
      - DIRECT
  - name: 🚀 SG
    type: select
    proxies:
      - DIRECT
  - name: 🚀 TW
    type: select
    proxies:
      - DIRECT
  - name: 🚀 JP
    type: select
    proxies:
      - DIRECT
  - name: 🚀 US
    type: select
    proxies:
      - DIRECT
rules:
 - PROCESS-NAME,aria2c,DIRECT
 - PROCESS-NAME,fdm,DIRECT
 - PROCESS-NAME,Folx,DIRECT
 - PROCESS-NAME,NetTransport,DIRECT
 - PROCESS-NAME,Thunder,DIRECT
 - PROCESS-NAME,Transmission,DIRECT
 - PROCESS-NAME,uTorrent,DIRECT
 - PROCESS-NAME,WebTorrent,DIRECT
 - PROCESS-NAME,WebTorrent Helper,DIRECT
 - PROCESS-NAME,DownloadService,DIRECT
 - PROCESS-NAME,Weiyun,DIRECT
 - DOMAIN-KEYWORD,aria2,DIRECT
 - DOMAIN-KEYWORD,xunlei,DIRECT
 - DOMAIN-KEYWORD,yunpan,DIRECT
 - DOMAIN-KEYWORD,Thunder,DIRECT
 - DOMAIN-KEYWORD,XLLiveUD,DIRECT
 - DOMAIN-SUFFIX,local,DIRECT
 - IP-CIDR,192.168.0.0/16,DIRECT,no-resolve
 - IP-CIDR,10.0.0.0/8,DIRECT,no-resolve
 - IP-CIDR,172.16.0.0/12,DIRECT,no-resolve
 - IP-CIDR,127.0.0.0/8,DIRECT,no-resolve
 - IP-CIDR,100.64.0.0/10,DIRECT,no-resolve
 - IP-CIDR6,::1/128,DIRECT,no-resolve
 - IP-CIDR6,fc00::/7,DIRECT,no-resolve
 - IP-CIDR6,fe80::/10,DIRECT,no-resolve
 - IP-CIDR6,fd00::/8,DIRECT,no-resolve
 - GEOIP,CN,DIRECT
 - MATCH,Final
