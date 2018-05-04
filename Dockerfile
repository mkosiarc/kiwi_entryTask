FROM nginx:alpine
 
COPY default.conf /etc/nginx/conf.d/
COPY localhost.crt /etc/ssl/
COPY localhost.key /etc/ssl/
COPY index.html /usr/share/nginx/html
COPY bananas.jpg /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
