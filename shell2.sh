#!/bin/bash/
 
echo "=========================================="
echo "=                                        ="
echo "=          Operation System              ="
echo "=          Select  Feature               ="
echo "=                                        ="
echo "=========================================="
echo "1)Cpu         4)Packages            7)Help"
echo "2)Mem         5)Network            8)About"
echo "3)Disk        6)Firewall            9)Exit"
   
while true; do
	echo -e "select a option:\c"
	read number
	if [ $number = "1" ]; then
		echo "Cpu"
       
    elif [ $number = "2" ]; then
        echo "Mem"
        
    elif [ $number = "3" ]; then
        echo "Disk"
 
    elif [ $number = "4" ]; then
        echo "Packages"

    elif [ $number = "5" ]; then
        echo "Network"

    elif [ $number = "6" ]; then
        echo "Firewall"
   
    elif [ $number = "7" ]; then
        echo "Help"

    elif [ $number = "8" ]; then
        echo "version1.0"

    elif [ $number = "9" ]; then
        break
    fi
done     

