#!/bin/bash
addgroup  aluno 
addgroup  professor
addgroup  gerente 
chown root:/srv
chown :gerente /srv
mkdir  /srv/alunos
mkdir  /srv/professores
chown root:/srv/alunos
chown root:/srv/professores
chown :aluno /srv/alunos
chown :professor /srv/professores 
chmod 751 /srv
chmod 770 /srv/alunos
chmod 770 /srv/professores
adduser --gecos --disable-login --ingroup professor --home /srv/professores/bruno bruno 
usermod -a -G gerente bruno 
adduser --gecos --disable-login --ingroup aluno  --home /srv/alunos/joao joao 
adduser --gecos --disable-login --ingroup aluno  --home /srv/alunos/maria maria 
usermod -e 2051-04-25 -f 90 joao
usermod -e 2051-04-25 -f 90 maria 

