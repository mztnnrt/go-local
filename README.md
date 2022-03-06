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
    environment:
      is_debug: 1
    ports:
      - 8080:8080
      - 2345:2345
    working_dir: /go/src/backend
    volumes:
      - ./backend:/go/src/backend
```

### Quick Start

We prepare sample for quick start, you start below command.

```
cd sample
docker compose up
```

Then you `curl localhost:8080`, you can received response from api server.
