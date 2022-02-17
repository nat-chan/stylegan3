#!/bin/bash
docker run \
    --runtime=nvidia \
    --rm -it \
    --shm-size=1g \
    -v /home:/home \
    -v /data:/data \
    -e HOME=${HOME}/scratch \
    --user $(id -u):$(id -g) \
    -w $PWD stylegan3 /bin/bash