#!/bin/bash
HOST=$1
shift
for ARG in "$@"
do
        sudo nmap -Pn --host_timeout 100 --max-retries 0 -p $ARG $HOST
done
