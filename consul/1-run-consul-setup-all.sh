ip=52.237.217.134
logfile=consul-setup.$ip.log
key=~/failfast/keys/ff.pem

#ssh -i $key wallism@$ip "bash -s" < ./10-consul-init-server.sh | tee $logfile
ssh -i $key wallism@$ip "bash -s" < ./20-consul-install.sh | tee -a $logfile