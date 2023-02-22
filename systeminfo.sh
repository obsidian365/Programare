#!/bin/bash

###################################################################
#titlu           :systeminfo.sh
#descriere       :Acest script va ofera informatii despre sistem.
#autor		 :bugulet ciprian-dumitru
#web		 :https://ciprianbugulet.blogspot.com/
#mail		 :buguletciprian@gmail.com
#data            :26032022
#versiune        :1.0.0    
#utilizare       :bash systeminfo.sh
#nota            :instalati Lynx si xTerm pentru a utiza acest script.
#bash_version    :5.1.16(1)-release                                         
###################################################################

server_name=$(hostname)

function memory_check() {
    	echo ""
	echo "Afisare informatii despre memorie pentru ${server_name} este: "
	free -h
	echo ""
	echo -n "	Apasati ENTER pentru a reveni la meniu... "
  	read
  	clear

}

function cpu_check() {
    	echo ""
	echo "Afisare informatii despre procesor pentru ${server_name} este: "
	lscpu
	echo ""
	echo -n "	Apasati ENTER pentru a reveni la meniu... "
  	read
  	clear
}

function pci_check() {
    	echo ""
	echo "Afisare informatii despre hardware pentru ${server_name} este: "
	lspci
	echo ""
	echo -n "	Apasati ENTER pentru a reveni la meniu... "
  	read
  	clear
}

function kernel_check() {
    echo ""
	echo "Afisare informatii despre versiunea de Kernel pentru ${server_name} este: "
	echo ""
	uname -r
    	echo ""
	echo -n "	Apasati ENTER pentru a reveni la meniu... "
  	read
  	clear
}

function hdd_check() {
    echo ""
	echo "Afisare informatii despre spatiul pe hdd pentru ${server_name} este: "
	echo ""
	df -h
    	echo ""
	echo -n "	Apasati ENTER pentru a reveni la meniu... "
  	read
  	clear
}

function export_information() {
        echo ""
	echo "Descarca toate informatiile despre calculator pentru ${server_name}: "
	echo ""
	sudo lshw -html > lshw.html
    	echo ""
	links lshw.html
	echo -n " Fisierul a fost descarcat cu succes. Apasati ENTER pentru a reveni la meniu... "
	read
  	clear
}

##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
red='\e[31m'
clear='\e[0m'
bold=$(tput bold)

##
# Color Functions
##

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}
ColorRed(){
	echo -ne $red$1$clear
}

menu(){
echo -e "
$(ColorBlue 'System Info v. 1.0.0')
$(ColorBlue 'by Bugulet Ciprian-Dumitru') "

echo -e " ${bold}
$(ColorRed 'Informatii despre sistem') "

echo -e "
$(ColorGreen '1)') Informatii despre utilizarea memoriei
$(ColorGreen '2)') Informatii despre procesor
$(ColorGreen '3)') Informatii despre hardware
$(ColorGreen '4)') Informatii despre versiunea de Kernel
$(ColorGreen '5)') Informatii despre utilizarea discului
$(ColorGreen '6)') Descarca toate informatiile
$(ColorGreen '0)') Exit
$(ColorBlue 'Alege o optiune:') "
        read a
        case $a in
	        1) memory_check ; menu ;;
	        2) cpu_check ; menu ;;
	        3) pci_check ; menu ;;
	        4) kernel_check ; menu ;;
	        5) hdd_check ; menu ;;
		6) export_information ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu