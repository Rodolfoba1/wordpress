# Utiliza la imagen de WordPress como base

FROM wordpress:latest


# Copia el archivo de configuración personalizado de PHP

COPY php.ini /usr/local/etc/php/conf.d/custom.ini


# Copia el archivo personalizado de configuración de Apache

COPY apache-config.conf /etc/apache2/sites-available/000-default.conf


# Habilita el reemplazo de enlaces simbólicos en Apache

RUN a2enmod rewrite


# Establece el directorio de trabajo en el directorio raíz de WordPress

WORKDIR /var/www/html