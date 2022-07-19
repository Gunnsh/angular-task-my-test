FROM nginx:1.23.0-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY /angular/dist/angular-starter /usr/share/nginx/html
RUN touch /run/nginx.pid \
 && chown -R nginx:nginx /run /var \
 && chmod -R 755 /run /var
USER nginx
