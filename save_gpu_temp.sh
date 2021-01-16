#!/bin/bash

while true; do
    MAXTEMP=$({(nvidia-smi -q | grep "GPU Current Temp" | awk '{print $5}') && \
    (ipmitool sdr list | grep -w TEMP_CPU. | awk '{print $3}')} | \
    awk '{if(max=="") {max=$1}; if($1>max) {max=$1}} END {print max}')
    echo "$(date)  | temp | $MAXTEMP" >> gpu_temp.log
    sleep 10s
done
