# linux-helpers
Tools and reminders

## Usage of gather-network-info.sh
- chmod +x gather-network-info.sh (for execute the file)
- ./gather-network-info.sh (run the file)
### Commands in the file
- cat etc/hosts
- cat /etc/network/interfaces
- ip addr show
- arp
- arp -a
- tcpdump -D (list interfaces)
- ip route show
- iptables  -L (list iptables filter rules)
- iptables -t nat -L (list iptables nat rules)
