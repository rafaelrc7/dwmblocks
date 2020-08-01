#!/bin/sh

cache=/tmp/netusage

tx_now=$(cat /sys/class/net/enp3s0/statistics/tx_bytes)
rx_now=$(cat /sys/class/net/enp3s0/statistics/rx_bytes)

[ ! -f $cache ] && (echo $tx_now > $cache ; echo $rx_now >> $cache)

tx_old=$(sed -n '1p' $cache)
rx_old=$(sed -n '2p' $cache)

echo $tx_now > $cache ; echo $rx_now >> $cache

tx_delta=$(numfmt --from-unit=1024 --to=iec-i --suffix=B $(((tx_now - tx_old) / 1024)))
rx_delta=$(numfmt --from-unit=1024 --to=iec-i --suffix=B $(((rx_now - rx_old) / 1024)))

#echo " ${rx_delta}  ${tx_delta} "
printf "[ %6s  %6s]" ${rx_delta} ${tx_delta}