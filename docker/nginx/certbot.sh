docker run -it --rm --name certbot \
            -p 80:80 -p 443:443 \
            -v "$(pwd)/cert:/etc/letsencrypt" \
            certbot/certbot certonly --standalone -d subgraphs.llama.airforce \
                 --non-interactive --agree-tos \
                 --email admin@llama.airforce --expand
