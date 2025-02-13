# Usa docker:dind como base para permitir la ejecución de contenedores dentro de este
FROM docker:dind

# Instalar Git y cualquier otra dependencia necesaria
RUN apk add --no-cache git

# Copiar el script que automatiza el proceso
COPY benchmark.sh /benchmark.sh

# Dar permisos de ejecución al script
RUN chmod +x /benchmark.sh

# Definir el punto de entrada para ejecutar el script automáticamente
ENTRYPOINT ["/benchmark.sh"]

