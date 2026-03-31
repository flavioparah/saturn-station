FROM nginx:alpine

# Limpa a pasta padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia TUDO da raiz do repo (onde está seu index.html) para o servidor
COPY . /usr/share/nginx/html/

# Opcional: Remove o próprio Dockerfile da pasta pública
RUN rm /usr/share/nginx/html/Dockerfile

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
