# Usa una imagen base de PHP
FROM php:7.4-apache

# Instala dependencias adicionales si son necesarias
RUN apt-get update && \
    apt-get install -y \
    git \
    zip \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /var/www/html

# Clona el repositorio (puedes ajustar la URL según tu repositorio)
RUN git clone https://github.com/zitodepina/jk-public-gh1.git .

# Instala las dependencias de PHP usando Composer si es necesario
# RUN composer install

# Expone el puerto 80 para el servidor web de Apache
EXPOSE 80

# Inicia el servidor Apache en primer plano al ejecutar el contenedor
CMD ["apache2-foreground"]
