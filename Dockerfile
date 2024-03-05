FROM ghcr.io/aosasona/chimney:latest

WORKDIR /var/www/html

COPY animals.json animals.json

COPY images images

EXPOSE 80

CMD ["run"]
