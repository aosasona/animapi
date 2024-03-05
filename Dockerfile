FROM ghcr.io/aosasona/chimney:latest

# remove fallback in chimney config
RUN sed -i "s/index.html//g" /etc/chimney/chimney.toml

WORKDIR /var/www/html

RUN echo "<style>body{background:#2a2a2a;color:#fafafa;padding:1rem;}</style><h1>Hiya!</h1><p>See <code>/animals.json</code> for all available animals and <code>/animals/[name].(webp|jpeg)</code> for the image.</p>" > index.html

COPY animals.json animals.json

COPY images images

EXPOSE 80

CMD ["run"]
