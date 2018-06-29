#!/bin/bash

release_flag=$(lsb_release -a | grep Distributor | grep Ubuntu)

if [ -n "$release_flag" ]
then
	echo 'net.core.default_qdisc=fq' >> /etc/sysctl.conf
	echo 'net.ipv4.tcp_congestion_control=bbr' >> /etc/sysctl.conf
else 
	echo 'Support Ubuntu Only'
fi
