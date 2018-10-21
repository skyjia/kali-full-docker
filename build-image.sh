#!/bin/bash

IMAGE_NAME="skyjia/kali-docker-full"

# Pull the latest kili-liunux docker base image
docker pull kalilinux/kali-linux-docker
docker build -t ${IMAGE_NAME} .
