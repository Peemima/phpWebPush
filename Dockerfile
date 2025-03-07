# Use the official PHP image from the Docker Hub
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the application code into the container
COPY . .

# Install required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Set the document root for Apache
RUN echo "DocumentRoot /var/www/html/public" >> /etc/apache2/apache2.conf

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
