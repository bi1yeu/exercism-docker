#!/bin/bash

if [[ -z "${LEIN_REPL_PORT}" ]]; then
    LEIN_REPL_PORT=4000
fi

docker run -it --rm \
       -e TOKEN=$TOKEN \
       -v "$BASE_PATH"/workspace:/workspace \
       -p $LEIN_REPL_PORT:4000 \
       exercism-io--$TRACK:latest
