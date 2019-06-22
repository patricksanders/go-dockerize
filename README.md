# Go Dockerize

Lean Golang Docker images from scratch. Currently a proof of concept.

## Usage

Here's an easy example of building [statsdebug](https://github.com/patricksanders/statsdebug):

```bash
docker build --build-arg PROJECT=github.com/patricksanders/statsdebug -t statsdebug .
docker run --rm statsdebug
```

### Build Args

| Argument | Default | Description |
|----------|---------|-------------|
| GOLANG_VERSION | `latest` | Golang image tag for builder |
| PROJECT |  | Go project to build, in the form `github.com/org/repo` |
