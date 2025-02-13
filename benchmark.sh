#!/bin/sh

# Lista de lenguajes y sus imágenes
declare -A languages=(
    ["Python"]="solucion-python"
    ["Java"]="solucion-java"
    ["C++"]="solucion-cpp"
    ["Node.js"]="solucion-node"
    ["Rust"]="solucion-rust"
)

echo "Lenguaje | Tiempo (ms)"
echo "----------------------"

# Recorrer cada contenedor y ejecutar
for lang in "${!languages[@]}"; do
    time_output=$(docker run --rm "${languages[$lang]}")  # Ejecuta el contenedor y captura el tiempo
    echo "$lang | $time_output"
done
