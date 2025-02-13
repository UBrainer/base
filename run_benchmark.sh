#!/bin/bash

# Clonar el repositorio con las soluciones
git clone https://github.com/UBrainer/act2.git solutions
cd solutions

# Ejecutar los contenedores
docker-compose up --build --abort-on-container-exit

# Capturar resultados y mostrarlos
echo "Resultados del Benchmark:"
echo "--------------------------------------"
for lang in Python Cpp node java rust; do
    output_file="solutions/$lang/output.txt"
    if [ -f "$output_file" ]; then
        time_ms=$(cat "$output_file")
        echo "$lang: ${time_ms}ms"
    else
        echo "$lang: No se encontró output.txt"
    fi
done
