FROM nginx:alpine

# Limpa a pasta padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tudo o que está DENTRO da pasta saturn-station para a raiz do servidor
COPY ./saturn-station/ /usr/share/nginx/html/

EXPOSE 80
