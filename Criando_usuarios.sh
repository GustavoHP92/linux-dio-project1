#!/bin/bash

#Script para criar usuários e grupos e atribuir permissões a cada um deles. 

senha=Minhasenha
grupoAdm=GRP_ADM
grupoVen=GRP_VEN
grupoSec=GRP_SEC

echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd $grupoAdm
groupadd $grupoVen
groupadd $grupoSec

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $senha -G $grupoAdm
useradd maria -m -s /bin/bash -p $senha -G $grupoAdm
useradd joao -m -s /bin/bash -p $senha -G $grupoAdm
useradd debora -m -s /bin/bash -p $senha -G $grupoVen
useradd sebastiana -m -s /bin/bash -p $senha -G $grupoVen
useradd roberto -m -s /bin/bash -p $senha -G $grupoVen
useradd josefina -m -s /bin/bash -p $senha -G $grupoSec
useradd amanda -m -s /bin/bash -p $senha -G $grupoSec
useradd rogerio -m -s /bin/bash -p $senha -G $grupoSec


echo "Permissão dos diretórios...."

chown root:$grupoAdm /adm
chown root:$grupoVen /ven
chown root:$grupoSec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando...."
