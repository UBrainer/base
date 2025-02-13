FROM docker:latest

# Instalar herramientas necesarias
RUN apk add --no-cache git bash

# Copiar el script de ejecución
COPY run_benchmark.sh /run_benchmark.sh
RUN chmod +x /run_benchmark.sh

# Ejecutar el script al iniciar el contenedor
CMD ["/bin/bash", "/run_benchmark.sh"]


