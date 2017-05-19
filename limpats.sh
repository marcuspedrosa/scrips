#!/bin/bash

# ------------------------------------------------------------------------------------
#  Script criado para deletar arquivos dump criados automaticamente pelo cliente oracle
# -------------------------------------------------------------------------------------



cd /mnt/wints

pwd

find -iname oracle -exec rm -rf {} \; > /dev/null 2>&1

#find -iname Temporary* -exec rm -rf {} \;




