#! /bin/bash/
 
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
        echo -e "`lscpu | sudo grep -w 'CPU(s)' | awk NR==1;
	       	lscpu | sudo grep 'Model name';
                lscpu | sudo grep Architecture;
                lscpu | sudo grep Virtualization;
                lscpu | sudo grep 'Vendor ID';
                lscpu | sudo grep 'CPU MHz'`"
       
    elif [ $number = "2" ]; then
        echo -e "`dmidecode -t memory | sudo grep 'Maximum Capacity';
                 dmidecode -t memory | sudo grep Type;
                 free -h`"
                
    elif [ $number = "3" ]; then
        echo -e "`smartctl -i -d auto /dev/sda | sudo grep'Device Model';
                  smartctl -i -d auto /dev/sda | sudo grep 'Rotation Rate';
                  smartctl -i -d auto /dev/sda | sudo grep 'User Capacity';
                  smartctl -i -d auto /dev/sda | sudo grep 'SATA Version is';
                  df -h | grep /dev/sda1`"
 
    elif [ $number = "4" ]; then
        echo -e "`apt-cache stats | sudo grep 'Total package names'`"

    elif [ $number = "5" ]; then
        echo -e "`sudo ifconfig`"

    elif [ $number = "6" ]; then
        echo -e "`sudo ystemctl status firewalld`"
   
    elif [ $number = "7" ]; then
        echo "Help"

    elif [ $number = "8" ]; then
        echo -e "`dmidecode | sudo grep -i version`"

    elif [ $number = "9" ]; then
        break
    fi
done     

