FROM ubuntu

# Update the package lists, upgrade existing packages, and install Apache2
RUN apt update -y && apt upgrade -y && \
    apt install -y apache2

# Modify Apache configuration to listen on port 8080
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf && \
    sed -i 's/<VirtualHost *:80>/<VirtualHost *:8080>/g' /etc/apache2/sites-available/000-default.conf

# Copy custom index.html into the web server's document root
COPY index.html /var/www/html/

# Expose both port 8080 (for Apache) and 80 (standard HTTP, but not used in this case)
EXPOSE  80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
