FROM docker:latest

# Instalar herramientas necesarias
RUN apk add --no-cache git bash

# Copiar el script de ejecución
COPY run_bechmark.sh /run_bechmark.sh
RUN chmod +x /run_bechmark.sh

# Ejecutar el script al iniciar el contenedor
CMD ["/bin/bash", "/run_bechmark.sh"]


