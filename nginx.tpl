events {
}
http {
    server {
        location / {
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            # proxy_pass https://api.evrythng.com;
            proxy_pass ${PROXY_DEST};
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }
    }
}