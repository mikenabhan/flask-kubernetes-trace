#!/usr/bin/env bash

docker build . --tag flask-kubernetes-trace:latest

docker run -p 5001:5001 flask-kubernetes-trace:latest 