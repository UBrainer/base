# Usamos una imagen de Docker-in-Docker (DinD) para poder ejecutar contenedores dentro de este contenedor
FROM docker:latest  

# Instalamos dependencias necesarias
RUN apk add --no-cache git bash

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el script que ejecutará los benchmarks
COPY run_benchmark.sh .

# Damos permisos de ejecución al script
RUN chmod +x run_benchmark.sh

# Comando por defecto al iniciar el contenedor
CMD ["sh", "./run_benchmark.sh"]





