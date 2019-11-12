# simple-niginx-proxy
standard docker build and run.
Expects a docker ENV VAR called "PROXY_DEST"


docker build -t evt-nginx . && docker run -p 80:80 evt-nginx
docker build -t evt-nginx . && docker run -e PROXY_DEST=https://api.evrythng.com -p 80:80 evt-nginx