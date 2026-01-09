# Use PHP with Apache
FROM php:8.1-apache

# Install mysqli & pdo_mysql extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite module (optional but recommended)
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy project files to Apache directory
COPY . /var/www/html/

# Fix permissions (important for Linux/Docker)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose Apache port
EXPOSE 80
