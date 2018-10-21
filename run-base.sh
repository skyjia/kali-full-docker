#!/bin/bash

# Pull the latest kili-liunux docker base image
docker pull kalilinux/kali-linux-docker

docker run -ti --rm --name kali-base kalilinux/kali-linux-docker /bin/bash
