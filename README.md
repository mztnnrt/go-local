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

https://github.com/mztnnrt/go-local/blob/1ed2b841a0951fc3390e7b0c91ffb2c74ec9c6b2/sample/docker-compose.yaml#L1-L14

### Quick Start

We prepare sample for quick start, you start below command.

```
cd sample
docker compose up
```

Then you `curl localhost:8080`, you can received response from api server.
