#!/bin/bash
docker run -it --rm --name dev-angular -p 4200:4200/tcp -p 8080:8080/tcp -p 9005:9005/tcp dkraemer/dev-angular:latest
