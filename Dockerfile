FROM n8nio/n8n

# Tworzymy katalog na customowe wtyczki
RUN mkdir -p /home/node/.n8n/custom-nodes

# Instalujemy wtyczkę Amazon Products Crawler
RUN cd /data/custom/nodes && npm install n8n-nodes-amazon-products-crawler

# Dajemy znać n8n, żeby załadował nasze rozszerzenia
ENV N8N_CUSTOM_EXTENSIONS /data/custom
ENV NODE_FUNCTION_ALLOW_EXTERNAL n8n-nodes-amazon-products-crawler
