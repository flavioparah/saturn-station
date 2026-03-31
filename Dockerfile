FROM nginx:alpine
# Copia todos os seus arquivos (incluindo o index.html) para a pasta do servidor
COPY . /usr/share/nginx/html
EXPOSE 80

