FROM httpd:2.4
COPY /src/index.html /usr/local/apache2/htdocs/
COPY /src/* /usr/local/apache2/htdocs/

