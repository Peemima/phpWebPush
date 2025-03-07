# Use the official PHP image from the Docker Hub
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /

# Copy the application code into the container
COPY . .

# Install required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Update the Apache configuration to use the root directory as DocumentRoot
RUN sed -i 's|DocumentRoot / /|' /etc/apache2/apache2.conf

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
