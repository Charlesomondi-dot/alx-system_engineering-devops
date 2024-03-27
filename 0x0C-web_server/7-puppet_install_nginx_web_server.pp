server {
    listen 80;

    root /var/www/html;
    index index.html index.htm;

    location / {
        return 200 "Hello World!";
    }

    location /redirect_me {
        return 301 https://example.com/new-location;
    }
}

