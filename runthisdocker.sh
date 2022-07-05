#! /bin/bash

docker build -t jsonrpcproxy .
docker run -dtp 3000:3000 --name jsonrpcproxy jsonrpcproxy

