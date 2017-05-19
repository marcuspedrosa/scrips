#!/bin/bash

# ------------------------------------------------------------------------------------
#  Script criado para deletar arquivos dump criados automaticamente pelo cliente oracle
# -------------------------------------------------------------------------------------



cd /mnt/wints

find -iname *.mp3 -exec rm -rf {} \; 
find -iname *.mp4 -exec rm -rf {} \; 
find -iname *.mpg -exec rm -rf {} \; 




