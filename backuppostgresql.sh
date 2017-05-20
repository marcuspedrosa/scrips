#!/bin/bash


################################################################
#
# 	Script para Backup para banco de dados Postgres
#	Autor: Marcus Pedrosa
#	Data: 19-05-2017
#	Feito para utilizar no localhost com opção trust no banco de dados
#       Versao: 0.1
##################################################################

# Setando a data atual

Data=`date "+%Y%m%d"`
Data2=`date "+%Y%m%d-%H:%M"`
Usuario=nome_do_usuario
Host=localhost
Banco=banco
Bancorest=banco2

echo "Inicio do Backup do banco de dados " $Data2 >>/var/log/backup.log

pg_dump -U $Usuario -h $Host -d -O -o -b -F c $Banco /backup/postgresql$Data.backup

echo "Teste de restauracao do Backup do banco de dados " $Data >>/var/log/backup.log
pg_restore -U $Usuario -h $Host -d  $Bancorest /backup/postgresql$Data.backup


echo "Compactando o Backup do banco de dados " $Data >>/var/log/backup.log
tar cvzf /backup/compact/$Data_backupPostgreSql.tgz /backup/postgresql$Data.backup


echo "Deletando o arquivo sem compactacao do Backup do banco de dados " $Data >>/var/log/backup.log
rm -f /backup/postgresql$Data.backup

echo "Termino do Backup do banco de dados " $Data >>/var/log/backup.log
