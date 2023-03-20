#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios Criados!"

echo "Vamos criar agora o grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo  "Criando usuários..."

useradd carlos -c "Carlos Souza" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Sá" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Debora Sá" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Sá" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Lopes" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN 

useradd josefina -c "Josefina Graças" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Jesus" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Usuários criados! Parabéns."

echo "Premissões dos diretórios..."

chown root:GRP_SEC /sec
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven

chmod 770 /sec
chmod 770 /ven
chmod 770 /adm
chmod 777 /publico

echo "Procedimento realizado!!!!!"
