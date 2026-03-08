# Etapa única: servir contenido estático con Nginx
FROM nginx:alpine

# Copiar tu sitio estático al directorio de Nginx
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Cloud Run escucha en el puerto 8080
EXPOSE 8080

# Ejecutamos Nginx en foreground
CMD ["nginx", "-g", "daemon off;"]
