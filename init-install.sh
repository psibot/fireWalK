#!/bin/bash
# SCRIPT:
# REV: Version 1.0
# PLATFORM: Kali  Linux
# AUTHOR: Coenraad
#
# PURPOSE: Install fireWalk
#
##########################################################
########### DEFINE FILES AND VARIABLES HERE ##############
##########################################################
# Run as root.
if [[ $EUID -ne 0 ]]; then
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    exit 1
fi

clear

##########################################################
################ BEGINNING OF MAIN #######################
##########################################################
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Need Repo's and software!!! This will take TIME..  \e[0m"
    echo
    echo "Installing system"
    echo
apt update
apt install tor git terminator python3 python3-pip firewalk fragroute wafwoof
# Git get needed software
#meterssh
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing meterssh \e[0m"
    echo
git clone https://github.com/trustedsec/meterssh.git
cd meterssh
pip3 install  py2exe paramiko ecdsa pyinstaller
pyinstaller setup.py
cd ..
#WAFW00F
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing WAFW00F \e[0m"
    echo
git clone https://github.com/EnableSecurity/wafw00f.git
cd wafw00f
python setup.py install
cd ..
#identYwaf
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing identYwaf  \e[0m"
    echo
git clone --depth 1 https://github.com/stamparm/identYwaf.git
#WAFNinja
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing WAFNinja  \e[0m"
    echo
git clone https://github.com/khalilbijjou/WAFNinja
cd WAFNinja
pip install -r requirements.txt
cd ..
#waftester
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing waftester  \e[0m"
    echo
git clone https://github.com/Raz0r/waftester.git
#libinjection-fuzzer
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing libinjection-fuzzer \e[0m"
    echo
git clone https://github.com/migolovanov/libinjection-fuzzer.git
#bypass-firewalls-by-DNS-history
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing bypass-firewalls-by-DNS-history \e[0m"
    echo
git clone https://github.com/vincentcox/bypass-firewalls-by-DNS-history.git
cd bypass-firewalls-by-DNS-history
apt install jq
cd ..
#sqlmap
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing sqlmap FOR NEW TAMPER SCRIPTS!! \e[0m"
    echo
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git
#info
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  AND ALL THE INFO NEEDED !! \e[0m"
    echo
git clone --depth 1 https://github.com/0xInfection/Awesome-WAF.git
#info
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Domain_analyze to check for firewalls  !! \e[0m"
    echo
git clone https://github.com/eldraco/domain_analyzer.git
#info
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  DLightBulb Audit Firewall  !! \e[0m"
    echo
    apt install libfst-dev libfst-tools libfst8 libfst8-plugins-base flex build-essential
#    git clone https://github.com/galv/openfst.git
#    cd openfst
#    autoreconf --install
#    ./configure
#   make -j 2ma
#   cd ../
    git clone https://github.com/lightbulb-framework/lightbulb-framework
    cd lightbulb-framework
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  dont install openfst or mysql !! \e[0m"
    echo
    read -p "Press [Enter] to continue..."
    pip install virtualenv
    virtualenv env
    source env/bin/activate
    pip install lightbulb-framework
    lightbulb status
#info
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  WAF Bench (WB) Tool Suits  !! \e[0m"
    echo
    apt  install gcc gcc-c++ make libev-devel.x86_64 cmake boost-devel.x86_64 python2 python2-pip.noarch wget.x86_64 expat-devel openssl-devel
    pip install ftw
    git clone https://github.com/microsoft/WAFBench.git
    cd WAFBench
    make
    make install

    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Please Remeber Firewall Bypass IS NOT LEGAL !! \e[0m"
    echo
    read -p "Press [Enter] to continue..."
    clear
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  HAPPY HUNTING !! \e[0m"
    echo
    sleep 2s

####################################################
################ END OF MAIN #######################
####################################################
exit 0
# End of script
