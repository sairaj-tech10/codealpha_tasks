
FROM nginx:latest

LABEL maintainer="Sairaj Singar"
LABEL project="Docker Web Server"

COPY html/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

