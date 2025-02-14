# Usamos Docker-in-Docker para permitir ejecutar contenedores dentro del contenedor base
FROM docker:dind

# Instalar dependencias necesarias
RUN apk add --no-cache bash git

# Copiar el script de benchmark al contenedor
COPY run_benchmark.sh /run_benchmark.sh

# Dar permisos de ejecución al script
RUN chmod +x /run_benchmark.sh

# Iniciar Docker en segundo plano y ejecutar el script
CMD ["sh", "-c", "dockerd-entrypoint.sh & sleep 3 && /run_benchmark.sh"]





