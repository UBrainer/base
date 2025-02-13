#!/bin/sh

# Clonar el repositorio con las soluciones
git clone https://github.com/UBrainer/act2.git
cd act2 || exit 1

# Lista de lenguajes y sus carpetas
LANGUAGES="Python C++ Node Java Rust"
OUTPUT_FILE="resultados.txt"

# Limpiar archivo de resultados si existe
echo "Lenguaje Tiempo(ms)" > $OUTPUT_FILE

# Recorrer cada lenguaje, construir y ejecutar su contenedor
for lang in $LANGUAGES; do
    IMAGE_NAME="solucion$(echo $lang | tr '[:upper:]' '[:lower:]')"

    # Construcción de la imagen
    docker build -t $IMAGE_NAME ./$lang

    # Ejecución del contenedor y captura de la salida (tiempo de ejecución)
    TIME=$(docker run --rm $IMAGE_NAME 2>/dev/null)

    # Guardar el resultado en el archivo
    echo "$lang $TIME" >> $OUTPUT_FILE
done

# Mostrar los resultados en formato tabla
echo "Resultados del benchmark:"
column -t $OUTPUT_FILE
