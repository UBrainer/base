FROM alpine:latest

# Instalar dependencias necesarias
RUN apk add --no-cache git docker-cli docker-compose bash

# Copiar el script de benchmark y darle permisos de ejecución
COPY run_benchmark.sh /run_benchmark.sh
RUN chmod +x /run_benchmark.sh

# Ejecutar el script al iniciar el contenedor
CMD ["/bin/bash", "/run_benchmark.sh"]



