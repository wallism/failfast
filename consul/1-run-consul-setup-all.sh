ip=52.237.212.113
logfile=consul-setup.$ip.log

plink -i ./keys/ff.ppk wallism@$ip -m 10-consul-init-server.sh > $logfile
plink -i ./keys/ff.ppk wallism@$ip -m 20-consul-install.sh >> $logfile