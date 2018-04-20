# squid-docker

Squid with basic auth installed in Docker-container.

Modify user and password if u ain't happy with default credentials in Dockerfile

    RUN htpasswd -b -c /etc/squid/password user password

and build Docker-image

    docker build -t squid .

U may run container with command below

    docker run -d --restart=always --name squid -p 3128:3128 squid
