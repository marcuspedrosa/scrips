#!/bin/bash

# ------------------------------------------------------------------------------------
#  Script criado para deletar arquivos dump criados automaticamente pelo cliente oracle
# -------------------------------------------------------------------------------------



cd /mnt/wints

find -iname oracle -exec rm -rvf {} \; 

find -iname Temporary* -exec rm -rvf {} \;



