docker build . -t=rust-hello-world:latest -f=Dockerfile.prod
docker run --rm -it -v "%~dp0src:/usr/src/hello-world" rust-hello-world:latest
pause