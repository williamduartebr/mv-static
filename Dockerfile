FROM nginx:alpine

# Copiar configuração do nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copiar arquivos do site
COPY ./ /usr/share/nginx/html/

# Expor porta 80
EXPOSE 80

# Comando para iniciar o nginx
CMD ["nginx", "-g", "daemon off;"]
