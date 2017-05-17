#!/bin/bash

# setup.sh author Mascerano Bachir (dev-labs.co)
# Install all dependencies nedded for avoidz.rb tool
# --------------------------------------------------------

#Colors
cyan='\e[0;36m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
path=`pwd`

#Check root exist
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; exit 1; }
clear
#banner head
echo -e $blue ""
echo "                    __     ___        "      
echo "_____ ___  _______ |__| __| _/_______ "
echo "\__  \ \  \/ /  _ \|  |/ __ |\___   / "
echo " / __ \ \   (  <_> )  / /_/ | /    /  "
echo "(____  / \_/ \____/|__\____ |/_____ \ "
echo "     \/                   \/       \/ "
echo "                                      "
echo "   Setup Script for AVOIDZ 1.0        "
echo " Created by Mascerano Bachir/Dev-labs "
#updating your distro
echo -e $green ""
echo "[ ✔ ] system found."
sudo cat /etc/issue
echo "[ ✔ ] updating distro."
sudo apt-get update -y
#check dependencies existence
echo -e $blue ""
echo "---------------------------------------" 
echo "| Checking dependencies configuration |" 
echo "---------------------------------------" 
echo "                                       " 
#Checking if Ruby exists
which ruby > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Ruby..............................[ found ]"
which ruby > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Ruby  -> not found "
echo -e $yellow "[ ! ] Installing Ruby "
sudo apt-get install ruby -y
echo -e $green "[ ✔ ] Done installing ...."
which ruby > /dev/null 2>&1
sleep 2
fi
# check if metasploit-framework is installed
which msfconsole > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Metasploit-Framework..............[ found ]"
which msfconsole > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Metasploit-Framework  -> not found "
echo -e $yellow "[ ! ] Installing Metasploit-Framework "
sudo apt-get install metasploit-framework -y
echo -e $green "[ ✔ ] Done installing ...."
which msfconsole > /dev/null 2>&1
sleep 2
fi
#check if xterm is installed
which xterm > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Xterm.............................[ found ]"
which xterm > /dev/null 2>&1
sleep 2
else
echo ""
echo -e $red "[ X ] xterm -> not found! "
sleep 2
echo -e $yellow "[ ! ] Installing Xterm                     "
sleep 2
echo -e $green ""
sudo apt-get install xterm -y
clear
echo -e $green "[ ✔ ] Done installing .... "
which xterm > /dev/null 2>&1
fi
# check if monodevelop exists
which monodevelop > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Monodevelop ......................[ found ]"
which monodevelop > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Monodevelop  -> not found "
echo -e $yellow "[ ! ]  Installing monodevelop "
echo -e $green ""
sudo apt-get install monodevelop -y
echo -e $green "[ ✔ ] Done installing ...."
which monodevelop > /dev/null 2>&1
sleep 2
fi
# check if mono-complete exists
which mcs > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Mono-complete ....................[ found ]"
which mcs > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Mono-complete  -> not found "
echo -e $yellow "[ ! ]  Installing Mono-complete "
echo -e $green ""
sudo apt-get install mono-complete -y
echo -e $green "[ ✔ ] Done installing ...."
which mcs > /dev/null 2>&1
sleep 2
fi
# check if mingw32 exists
which i586-mingw32msvc-gcc > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Mingw32 Compiler..................[ found ]"
which i586-mingw32msvc-gcc > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] mingw32 compiler  -> not found "
echo -e $yellow "[ ! ]   Installing Mingw32 "
sudo apt-get install mingw32 -y
echo -e $green "[ ✔ ] Done installing .... "
which i586-mingw32msvc-gcc > /dev/null 2>&1
sleep 2
fi
echo -e $green "[ ! ] install ruby gems...............[ proceed ]"
echo -e $yellow "[ ! ] install artii"
sudo gem install artii > /dev/null 2>&1
echo -e $green "[ ✔ ] Artii installed "
echo -e $yellow "[ ! ] install colorize"
sudo gem install colorize > /dev/null 2>&1
echo -e $green "[ ✔ ] Colorize installed "
sleep 2
echo -e $yellow "[ ! ] geving permission to avoidz script"
chmod +x avoidz.rb
sleep 2
echo -e $blue "To execute avoidz write (./avoidz.rb) to see help commands."
echo -e $green ""
echo "------------------------------------" 
echo "| [ ✔ ]installation completed[ ✔ ] |" 
echo "------------------------------------" 
exit

