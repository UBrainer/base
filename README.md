# Miembros del grupo
Brainer Gutierrez
Alan Henao

# Instructivo para ejecucion
Ejecutar los siguientes comandos en el mismo orden:

apk add git 
git clone https://github.com/UBrainer/base.git
docker build -t base ./base
docker run –rm –name Dbase -v /var/run/docker.sock:/var/run/docker.sock base sh

# Repositorio soluciones
https://github.com/UBrainer/act2
