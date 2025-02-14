#!/bin/sh
set -e

# Clonar el repositorio con las soluciones
git clone https://github.com/UBrainer/act2.git
cd act2

# Encabezado de la tabla
echo "Lenguaje | Tiempo (ms)"
echo "----------------------"

# Recorrer cada carpeta y ejecutar su contenedor
for lang in cpp python node java rust; do
    cd $lang
    docker build -t benchmark-$lang . > /dev/null 2>&1
    result=$(docker run --rm benchmark-$lang)
    echo "$lang | $result"
    cd ..
done



