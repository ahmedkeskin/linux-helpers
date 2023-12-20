# SERVER NETWORK INFO

# VARIABLES
CURRENT_DATE=`date +"%Y-%m-%d %T"`
HOST_NAME=`hostname`
GREEN='\033[0;32m'
RED='\033[0;31m'
NOCOLOR='\033[0m'
TITLE="NO-TITLE"
USER_SELECTION=0

#FUNCTIONS
function setStart {
printf "\n${GREEN}--------------BEGIN:${CURRENT_DATE} SERVER: ${HOST_NAME} [${TITLE}]---------------------------------------------${NOCOLOR}\n"
echo ""
#printf "${GREEN}\n${TITLE}\n${NOCOLOR}"
}

function setEnd {
echo ""
printf "\n${RED}--------------END:${CURRENT_DATE} SERVER: ${HOST_NAME} [${TITLE}]---------------------------------------------${NOCOLOR}\n"
echo ""
}

#################################################
#####              OPERATIONS               #####
#################################################

# HOSTS
TITLE="LIST ETC/HOSTS"
setStart
cat /etc/hosts
setEnd

# NETWORK INTERFACES
TITLE="NETWORK INTERFACES"
setStart
cat /etc/network/interfaces
setEnd

# LIST IP ADDRESS
TITLE="LIST IP ADDRESS"
setStart
ip addr show
setEnd

# ARP TABLE
TITLE="ARP TABLE"
setStart
echo ""
echo "command: arp"
arp
echo ""
echo "command: arp -a"
arp -a
setEnd

#TCPDUMP -D
TITLE="TCPDUMP STATUS"
setStart
tcpdump -D
setEnd

#IP ROUTES
TITLE="IP ROUTES"
setStart
ip route show
setEnd

# IPTABLES NAT RULES
TITLE="IPTABLES RULES"
setStart
iptables  -L
setEnd


# IPTABLES NAT RULES
TITLE="IPTABLES NAT RULES"
setStart
iptables -t nat -L
setEnd

