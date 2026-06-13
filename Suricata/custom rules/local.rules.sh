# Feature 1: Advanced Rule Creation
alert http any any -> $HOME_NET any (msg:"HTTP URI contains admin"; http.uri; content:"admin"; nocase; sid:1000001; rev:1;)

alert icmp any any -> any any (msg:"Suspicious ICMP payload detected"; content:"|DE AD BE EF|"; sid:1000002; rev:1;)

# Feature 2: PCRE / Regex-Based Detection
alert http any any -> $HOME_NET any (msg:"SQL injection attempt via POST"; http.request_body; pcre:"/(\%27)|(\')|(\-\-)|(\%23)|(#)/i"; sid:1000003; rev:1;)

# Feature 3: Thresholding / Rate-Based Alerts
alert icmp any any -> any any (msg:"ICMP ping flood detected"; threshold: type both, track by_src, count 5, seconds 10; sid:1000004; rev:1;)

alert icmp any any -> any any (msg:"ICMP ping limited (1 per 10 sec)"; threshold: type limit, track by_src, count 1, seconds 10; sid:1000005; rev:1;)