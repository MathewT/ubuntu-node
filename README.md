# Ubuntu 18 NodeJS

## Build the image

```bash
docker build -t mthomas/ubuntu_nodejs .
```

## Run the container

```bash
docker run -ti -v $HOME/.ssh:/root/.ssh  -v "$(pwd)"/src:/usr/src/app/src  mthomas/ubuntu_nodejs
```