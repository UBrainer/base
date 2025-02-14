#!/bin/bash
set -e  # Detener el script en caso de error

# Clonar el repositorio con las soluciones
git clone https://github.com/UBrainer/act2.git /benchmark

# Definir la cabecera de la tabla
echo -e "Lenguaje\tTiempo (ms)" > resultados.txt

# Recorrer las carpetas de los lenguajes
for lang in cpp python node java rust; do
    echo "Ejecutando $lang..."
    
    # Construir la imagen del contenedor
    docker build -t benchmark-$lang /benchmark/$lang
    
    # Ejecutar el contenedor y capturar la salida en output.txt
    docker run --rm benchmark-$lang > /benchmark/$lang/output.txt
    
    # Leer el tiempo de ejecución
    time_ms=$(cat /benchmark/$lang/output.txt)
    
    # Agregar el resultado a la tabla
    echo -e "$lang\t$time_ms" >> resultados.txt
done

# Mostrar la tabla final
cat resultados.txt

