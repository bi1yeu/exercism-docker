#!/bin/bash

docker run -it --rm \
       -e TOKEN=$TOKEN \
       -v "$BASE_PATH"/workspace:/workspace \
       exercism-io--$TRACK:latest
