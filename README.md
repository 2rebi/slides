# Slides

## Basic Start

```shell
go get golang.org/x/tools/cmd/present
go install golang.org/x/tools/cmd/present

present
```

## Docker Start

```shell
docker run -d -p 3999:3999 hellp/slides
```

### Docker Build, Push

```shell
docker build --platform amd64 -t hellp/slides .
docker push hellp/slides
```

# License
[MIT License](LICENSE)