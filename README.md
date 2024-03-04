# Flet 0.20.2

## Dockerfile
```` sh
FROM python:3.12-alpine3.19
WORKDIR /app/
ADD ./app/ .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python","/app/app.py"]
````
## Dockerignore
````
*.md
dockerfile
docker-compose.yml
````
## Dockercompose
```` sh
version: '3.9'
services:
  flet:
    container_name: flet
    # image: my-nginx-image:latest
    build: .
    volumes:
      - ./app:/app
    ports:
      - "8550:8550"
````

## Build
```sh 
docker build -t ingcarrasco/docker-flet:1.0-alpine  .
```

## Push Docker Hub
````sh
docker login -u "user" -p "password" docker.io

docker latest docker-flet-flet:latest docker-flet:1.0-alpine
docker tag local-image:tagname new-repo:tagname

docker push ingcarrasco/docker-flet:1.0-alpine 
docker push new-repo:tagname
````