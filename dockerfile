# Use an official Apache runtime as a parent image
FROM httpd:2.4

# Set the working directory inside the container
WORKDIR /usr/local/apache2/htdocs/

# Copy the HTML, PHP, and other files into the container
COPY careers.html /usr/local/apache2/htdocs/
COPY careers.php /usr/local/apache2/htdocs/
COPY contactme.php /usr/local/apache2/htdocs/
COPY LICENSE /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache server
CMD ["httpd-foreground"]
