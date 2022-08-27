docker run -it --rm --name certbot \
            -p 80:80 -p 443:443 \
            -v "$(pwd)/cert:/etc/letsencrypt" \
            certbot/certbot certonly --standalone -d momotaro.xyz \
                 --non-interactive --agree-tos \
                 --email admin@momotaro.xyz --expand