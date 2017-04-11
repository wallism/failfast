ip=52.237.217.134
logfile=consul-setup.$ip.log
key=~/failfast/keys/ff.pem

ssh -i $key consul@$ip "bash -s" < ./10-consul-init-server.sh | tee $logfile
ssh -i $key consul@$ip "bash -s" < ./20-consul-install.sh | tee -a $logfile

echo "*** copy up consul configs"
rsync -r -e "ssh -i $key" ./consul.d/ consul@$ip:/etc/consul.d/  | tee -a $logfile
# todo: need different server config for each machine. Just needs different start_join ip's
