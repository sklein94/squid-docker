#!/bin/bash

docker build . -t mysquid:mysquid && docker run --restart=always --name squid -d -p 3128:3128 mysquid:mysquid
