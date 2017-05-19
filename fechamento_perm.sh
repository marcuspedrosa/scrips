#!/bin/bash

#script alterando permissões da pasta /home/fechamento
# Autor: Marcus Vinicius Gonzaga Pedrosa
# versão 0.06
#data 30-03-2017
# versão 0.07
#data 26-04-2017


# alterando premissões dos arquivos da pasta /home/fechamento/empresas  para somente leitura e mantendo as permissões das pastas.

cd /home/fechamento/empresas

find -iname *.* -exec chmod 555 {} \;

# alterando donos e permissões de pastas

cd /home/fechamento

#pastas federal  mudando para grupo fechamentofederal

find -iname federal -exec chown -R rose:fechamentofederal {} \;
find -iname federal -exec chmod -R 775 {} \;

# pasta DIMOB

chown -R rose:fechamentofederal /home/fechamento/DIMOB
chmod -R 775 /home/fechamento/DIMOB

#pastas estadual  mudando para grupo fechamentoestadual

find -iname estadual -exec chown -R rose:fechamentoestadual {} \;
find -iname estadual -exec chmod -R 775 {} \;

#pastas municipal  mudando para grupo fechamentomunicipal


find -iname municipal -exec chown -R rose:fechamentomunicipal {} \;
find -iname municipal -exec chmod -R 775 {} \;

#pastas previdencia  mudando para grupo fechamentodp

find -iname previd* -exec chown -R rose:fechamentodp {} \;
find -iname previd* -exec chmod -R 775 {} \;

#pastas dirf  mudando para grupo fechamentodp

chown -R rose:fechamentodp /home/fechamento/DIRF
chmod -R 775 /home/fechamento/DIRF


#pastas MTE  mudando para grupo fechamentodp

find -iname mte -exec chown -R rose:fechamentodp {} \;
find -iname mte -exec chmod -R 775 {} \;

#pastas INFORME DE RENDIMENTO mudando para grupo fechamentmunicipal

chown -R rose:fechamentomunicipal /home/fechamento/INFORMES\ DE\ RENDIMENTOS/
chmod -R 775 /home/fechamento/INFORMES\ DE\ RENDIMENTOS/

#pastas DOCUMENTOS PF  mudando para grupo fechamentmunicipal

chown -R rose:fechamentomunicipal /home/fechamento/DOCUMENTOS\ PF/
chmod -R 775 /home/fechamento/DOCUMENTOS\ PF/

#pastas  LIVROS FISCAIS mudando para grupo livrosfiscais

chown -R rose:livrosfiscais /home/fechamento/LIVROS\ FISCAIS/
chmod -R 775 /home/fechamento/LIVROS\ FISCAIS/

#pastas  CONTROLE DE INVENTÁRIO mudando para grupo controleinventario

chown -R ieda:controleinventario /home/fechamento/CONTROLE\ DE\ INVENTÁRIO/
chmod -R 775 /home/fechamento/CONTROLE\ DE\ INVENTÁRIO/


# mantendo permissões na pasta /home/fechamento/empresas
# por algum motivo este script está alterando as permissões para somente leitura neste pasta
# por isso estou forçando a permissão 775 neste comando

chmod 775 /home/fechamento/empresas
