FROM docker.io/busybox:latest
COPY web /var/www
RUN chown -R www-data:www-data /var/www
USER www-data 
WORKDIR /var/www
CMD /bin/httpd -f -p 8080
