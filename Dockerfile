#official Python runtime as a parent image
FROM docker.io/centos
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app

# Installing apche server
RUN yum install httpd -y

# Copy source binary
COPY ./index.html /var/www/html

# Make port 80 available to the world outside this container
EXPOSE 80

# Lets run the apache server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]



