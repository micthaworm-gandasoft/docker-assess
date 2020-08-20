#!/bin/sh
docker build . -t myimage 
docker rm -f mycontainer  || true
docker run -d -p 80:80  --name mycontainer myimage
