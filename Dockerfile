FROM nginx

COPY nginx.tpl /etc/nginx/nginx.tpl
CMD envsubst '\$PROXY_DEST' < /etc/nginx/nginx.tpl > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'

