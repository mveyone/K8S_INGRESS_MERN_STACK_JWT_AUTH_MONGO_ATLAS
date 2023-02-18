#     events {
        worker_connections 1024;
    }
  http {
    upstream frontend {
        server client:80;
    }
    upstream backend {
        server api:4000;
    }

    server {
        listen 80;
        server_name frontend;
        server_name backend;

        location /{
        proxy_pass http://client:80;
        proxy_http_version 1.1;
        proxy_set_header Upgrade ;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host ;
        proxy_cache_bypass ;
    }

        location /api {
        proxy_pass http://api:4000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade ;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host ;
        proxy_cache_bypass ;
    }
    }
  }



