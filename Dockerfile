FROM nginx
 
RUN whoami

USER root
COPY build/* /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
RUN chmod -R +r  /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]