## Problem 1: Examine the `docker prune` command
Use `docker system prune` to Remove all unused containers, networks, images (both dangling and unreferenced), and optionally, volumes.
[source](https://docs.docker.com/engine/reference/commandline/system_prune/)

## Problem 2: Examine the differences between the `ADD`/`COPY` and `CMD`/`ENTRYPOINT` Dockerfile commands
Although `ADD` and `COPY` are functionally similar, generally speaking, `COPY` is preferred. That’s because it’s more transparent than `ADD`. `COPY` only supports the basic copying of local files into the container, while `ADD` has some features (like local-only tar extraction and remote URL support) that are not immediately obvious. Consequently, the best use for `ADD` is local tar file auto-extraction into the image, as in `ADD` rootfs.tar.xz /.
[source](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#add-or-copy)

The best use for `ENTRYPOINT` is to set the image’s main command, allowing that image to be run as though it was that command (and then use `CMD` as the default flags).
[source](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint)

## Story Problem:
You work as a Devops Engineer in a leading Software Company. You have been asked to Dockerize the applications on the production server. The company uses custom software, therefore there is no pre-built container which can be used.

 Assume the following things:

* Assume the software to be installed is apache

* Use an Ubuntu container

 The company wants the following things:

* Push a container to DockerHub with the above config

The Developers will not be working with Docker, hence from their side you will just get the code. Write a Dockerfile which could put the code in the custom image that you have built
