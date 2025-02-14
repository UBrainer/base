# Miembros del grupo
Brainer Gutierrez

Alan Henao

# Instructivo para ejecucion
Ejecutar los siguientes comandos en el mismo orden:

apk add git 

git clone https://github.com/UBrainer/base.git

docker build -t base ./base

docker run –rm –name Dbase -v /var/run/docker.sock:/var/run/docker.sock base 2>/dev/null

porfavor asegurarse de que esta en una sesion nueva porque sino arrojara error "no space left on device"

# Repositorio soluciones
https://github.com/UBrainer/act2
