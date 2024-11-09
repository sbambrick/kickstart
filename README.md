# Kickstart

Kickstart provides quick way to take an existing docker container that is used
for building a project and overlay applications and dotfiles that turn it into
a full fledged development environment.

Usage (replace `<BASE_IMAGE>` below)


```bash
docker build -t <BUILD_IMAGE> \
       --build-arg BASE_IMAGE=<BASE_IMAGE> \
       -f docker/Dockerfile.ubuntu2404 \
       .
```

Now log into the container, start tmux, and begin coding with neovim.
