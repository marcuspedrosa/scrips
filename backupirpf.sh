#
#
# Backup da pasta  IRPF 
#
#


#!/bin/bash

Data=`date "+%Y%m%d"`
Data2=`date "+%Y%m%d-%H:%M"`

echo inicio: $Data2 >>/home/contac/irpf/backupIrpf.log

tar czf /home/contac/irpf/backup-irpf-help-$Data.tar.gz /mnt/irpf > /dev/null 2>&1
 
Data2=`date "+%Y%m%d-%H:%M"`

echo Fim   : $Data2 >>/home/contac/irpf/backupIrpf.log
