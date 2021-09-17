FROM httpd
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80 443
ENTRYPOINT []
CMD sed -i "s/80/$PORT/g" /usr/local/apache2/conf/httpd.conf && httpd-foreground
