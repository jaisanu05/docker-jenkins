FROM nginx
WORKDIR /usr/share/nginx/html
COPY demo/ /usr/share/nginx/html
EXPOSE 80
