ip=52.237.210.159
logfile=consul-setup.$ip.log
keydir=~/failfast/keys

ssh -i $keydir/ff.pem wallism@$ip "bash -s" < ./10-consul-init-server.sh | tee $logfile
ssh -i $keydir/ff.pem wallism@$ip "bash -s" < ./20-consul-install.sh | tee -a $logfile