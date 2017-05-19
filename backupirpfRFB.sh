#
#
# Backup da pasta  IRPF 
#
#


#!/bin/bash

Data=`date "+%Y%m%d"`
Data2=`date "+%Y%m%d-%H:%M"`

echo inicio: $Data2 >>/home/contac/irpf/backupIrpf_RFB.log

tar czf /home/contac/irpf/backup-irpf-RFB-$Data.tar.gz /mnt/sara > /dev/null 2>&1
 
Data2=`date "+%Y%m%d-%H:%M"`

echo Fim   : $Data2 >>/home/contac/irpf/backupIrpf_RFB.log
