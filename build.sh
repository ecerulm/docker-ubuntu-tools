#!/bin/bash
docker build -t ecerulm/ubuntu-tools:latest .
# docker push ecerulm/ubuntu-tools:latest

echo "docker run -ti --rm ecerulm/ubuntu-tools:latest"

