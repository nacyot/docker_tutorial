# Client for docker workshop

## Docker build

```
docker build --force-rm=true -t subicura/docker-workshop-app:1 .
```

## Docker run

```
docker run --rm -p 4567:4567 subicura/docker-workshop-app:1
```

## Test

```
ENDPOINT=https://workshop-docker-kr.herokuapp.com/ PARAM_NAME=subicura PARAM_VERSION=2 PARAM_MESSAGE=message bundle exec ruby app.rb
```
