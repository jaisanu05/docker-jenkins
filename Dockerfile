FROM nginx
WORKDIR /demo
COPY demo/* /usr/share/nginx/html
EXPOSE 80
