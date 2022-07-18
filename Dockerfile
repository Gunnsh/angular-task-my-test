FROM nginx:1.23.0-alpine
RUN net user /add Nginx
USER Nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY /angular/dist/angular-starter /usr/share/nginx/html
