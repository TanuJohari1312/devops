FROM nginx
MAINTAINER tanu johari "tanu.johari@gds.ey.com"
WORKDIR /usr/share/nginx/html
#ADD test2.html ey.jpg /usr/share/nginx/html/
ADD . .
# here /usr/share/nginx/html is the documentroot of nginx web server
EXPOSE 80
