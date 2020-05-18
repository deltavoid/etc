

iptables -t nat -F
iptables -t nat -Z
iptables -t nat -X

iptables -t mangle -F
iptables -t mangle -Z
iptables -t mangle -X

iptables -t filter -F
iptables -t filter -Z
iptables -t filter -X

iptables -t raw -F
iptables -t raw -Z
iptables -t raw -X