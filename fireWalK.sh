#!/bin/bash
# SCRIPT: fireWalK.sh
# REV: Version 1.0
# PLATFORM: Linux
# AUTHOR: Coenraad
#
# PURPOSE: userHunt3r control
#
##########################################################
########### DEFINE FILES AND VARIABLES HERE ##############
##########################################################

##########################################################
################ BEGINNING OF MAIN #######################
##########################################################
# Run as root.
if [[ $EUID -ne 0 ]]; then
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    exit 1
fi

clear

function install()
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Kick off INSTALL \e[0m"
    echo
    echo "Build system"
    echo
    sudo ./init-install.sh
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m INSTALL DONE \e[0m"

  }

function oldwaycheck()
  {
      clear
      echo
      echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m START a Firewall DOMAIN check !!!  \e[0m"
      echo
      echo "Please always be safe"
      read -p "Press [Enter] Be shure!!!..."
      echo
      # User input:
      echo
      echo -e "\e[40;38;5;82m  [-] \e[30;48;5;82m Lets Setup A DOMAIN to TEST !!!  \e[0m"
      echo -e "\e[40;38;5;82m  [-] \e[30;48;5;82m This might run a while   \e[0m"
      sleep 2s
      echo
      echo "Please enter DOMAIN (example dork.com ) : "
      read domaintest
      cd domain_analyzer
      ./domain_analyzer.py -d $domaintest -b -o
      echo
      echo
      read -p "Press [Enter] to continue..."
      cd ..
      echo
      echo
      echo -e "[-]  \e[41mRed if you see the following  --- tcpwrapped syn-ack ttl 240 or Device type: switch|storage-misc|printer|PBX|firewall|WAP ---   \e[0m"
      echo -e "[-]  \e[41mRed The Domain / IP's Are Firewalled   \e[0m"
      read -p "Press [Enter] to continue..."
      echo
      echo
    }


function whatfire()
  {
      clear
      echo
      echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m LETS check the Firewall Info !!!  \e[0m"
      echo
      echo "Please always be safe"
      read -p "Press [Enter] Be shure!!!..."
      echo
      # User input:
      echo
      echo -e "\e[40;38;5;82m  [-] \e[30;48;5;82m Lets Setup  URL / Website !!!  \e[0m"
      sleep 2s
      echo
      echo "Please enter  URL / Website  : "
      read firetest
      wafw00f $firetest
      echo
      echo -e "\e[40;38;5;82m  [-] \e[30;48;5;82m Next step will run a payload for info - will take time  \e[0m"
      sleep 2s
      echo
      cd identYwaf
      ./identYwaf.py --random-agent  $firetest
      echo
      echo
      read -p "Press [Enter] to continue..."
      cd ..
      echo
      echo
    }

function show_menus()
  {
  clear

  echo
  for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
  echo -e "\e[40;38;5;82m Fire \e[30;48;5;82m Walk\e[0m"
  for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
  echo
  echo -e "\e[31m[-]\e[0m \e[1m   Choose : Hit 'a' for !!! WILL INSTALL SYSTEM * RUN ME FIRST !!! \e[0m"
  echo -e "\e[31m[-]\e[0m \e[1m   Choose : Hit 'b' for Setup A DOMAIN To Test  !!!\e[0m"
  echo -e "\e[31m[-]\e[0m \e[1m   Choose : Hit 'c' for Check URL / Website  Detail  !!!\e[0m"
  echo -e "\e[31m[-]\e[0m \e[1m   Choose : Hit 'x' for Exit!!!\e[0m"
  echo
  echo "Pick Option:"
  }


  show_menus

  read choice
  if [ "$choice" == a ]; then
      install
      show_menus
      read choice
      fi

  if [ "$choice" == b ]; then
      oldwaycheck
      clear
      sleep 2
      fi

 if [ "$choice" == c ]; then
      whatfire
      clear
      sleep 2
      fi



  if [ "$choice" == x ]; then
      clear
      sleep 2
      echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m THANK YOU FOR USING ME !!!  \e[0m"
      echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m Have a nice day! \e[0m"
      exit 0
      fi


####################################################
################ END OF MAIN #######################
####################################################
exit 0
# End of script
