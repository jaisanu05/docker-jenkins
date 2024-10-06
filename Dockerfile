FROM nginx
WORKDIR /demo
COPY . /usr/share/nginx/html
EXPOSE 80
