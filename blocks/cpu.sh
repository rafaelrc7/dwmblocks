#!/bin/bash 

case $BUTTON in
	3) st -c htop -e htop --sort-key=PERCENT_CPU & ;;
esac

#CPU USAGE
cache=/tmp/cpuusagecache
procstat=$(awk 'NR==1{print $5; for (i=1;i<=NF;i++) t+=$i; print t}' /proc/stat)
[ ! -f $cache ] && echo $procstat > $cache
idle_old=$(awk '{print $1}' $cache)
total_old=$(awk '{print $2}' $cache)
echo $procstat > $cache
idle_now=$(sed -n '1p' <<< $procstat)
total_now=$(sed -n '2p' <<< $procstat)
total_delta=$((total_now - total_old))
idle_delta=$((idle_now - idle_old))
cpu_used=$((total_delta - idle_delta))
cpu_usage=$((100 * cpu_used / total_delta))

#CPU TEMP
cpu_temp=$(sensors | awk -F"[+.]" '/Tctl/{print $2}')

printf " [CPU %2d%% %2d°C]" $cpu_usage $cpu_temp
