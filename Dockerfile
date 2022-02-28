FROM nginx:alpine

WORKDIR /oba-custom-content

COPY . .

COPY ./nginx.conf /etc/nginx/nginx.conf