## go-local

Simple docker image for local develop with Go. Image at Docker Hub is Here [mztnnrt/go-local](https://hub.docker.com/repository/docker/mztnnrt/go-local)

### Usage

You can volume mount and then you set `working_dir` property directory located `main.go`, you can live reloading.

```
.
├── README.md
├── backend
│   ├── main.go
│   ├── go.mod
│   └── go.sum
└── docker-compose.yaml
```

```yaml
version: "3.8"
services:
  backend:
    container_name: go-app
    image: mztnnrt/go-local:latest
    restart: always
    ports:
      - 8080:8080
    working_dir: /go/src/backend
    volumes:
      - ./backend:/go/src/backend
```
