#!/bin/bash

docker run -p 4222:4222 -it python:3.7-slim python3 -m http.server --bind 0.0.0.0