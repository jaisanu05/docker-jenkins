FROM nginx
WORKDIR /usr/share/nginx/html
COPY demo/ .
EXPOSE 80
