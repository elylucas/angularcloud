FROM nginx:alpine
LABEL author="Ely Lucas"
COPY ./dist /usr/share/nginx/html
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
