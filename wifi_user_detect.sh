# Author : Rahat Khan Tusar(RKT)
#!/bin/bash
#Filename: wifi_user_detect.sh
echo
clear
echo
figlet -f smblock  Wifi User Detect
echo
echo "Author : Rahat Khan Tusar(RKT)"
echo "Github : https://github.com/r3k4t"
echo
echo "Please,wait"
echo
echo "Press ctrl + c"
echo
for ip in 192.168.0.{1..255} ;
do
   (
      ping $ip  &> /dev/null ;
  
      if [ $? -eq 0 ];
      then
       echo $ip is alive.   
      fi
      )&
  done
wait
