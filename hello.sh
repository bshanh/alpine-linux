#!/bin/bash
thehostname=$(hostname)
theshell=$(echo $SHELL | cut -d'/' -f 3)
echo -e " \e[2m--------------------------------------------------------------------------------\e[0m"
echo -e " \e[2m: Hostname \t: \e[0m\e[1m${thehostname^^} \e[0m"
echo -e " \e[2m: Kernel \t: $(uname -mr) \e[0m"
echo -e " \e[2m: OS version \t: Alpine Linux $(grep '^VERSION' /etc/os-release | cut -d'=' -f 2) \e[0m"
echo -e " \e[2m: Shell env \t: ${theshell} \e[0m"
echo -e " \e[2m: Boot on \t: $(uptime -s) \e[0m"
echo -e " \e[2m: Login time \t: $(date +'%Y-%m-%d %T %Z') \e[0m"
echo -e " \e[2m--------------------------------------------------------------------------------\e[0m"
getlastip=$(last | head -n 2 | tail -1)
lastip=$(echo $getlastip | cut -d' ' -f 3)
lastdate=$(echo $getlastip | cut -d' ' -f 4,5,6,7,8,9)
echo ""
echo -e " \e[33m Last login\e[0m \e[2mfrom ${lastip} on ${lastdate} \e[0m"
unset thehostname
unset theshell
unset getlastip
unset lastip
echo ""
