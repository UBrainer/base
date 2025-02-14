#!/bin/sh
set -e

# Clonar el repositorio con las soluciones
git clone https://github.com/UBrainer/act2.git
cd act2

# Encabezado de la tabla
echo "Lenguaje | Tiempo (ms)"
echo "----------------------"

# Recorrer cada carpeta y ejecutar su contenedor
for lang in Cpp python node java rust; do
    echo "Procesando $lang..."
    cd $lang

    # Construir la imagen
    docker build -t benchmark-$lang . || { echo "Error construyendo $lang"; exit 1; }

    # Ejecutar el contenedor y capturar salida
    result=$(docker run --rm benchmark-$lang) || { echo "Error ejecutando $lang"; exit 1; }
    
    echo "$lang | $result"

    cd ..
done




