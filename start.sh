#!/bin/bash

exercism configure --token=$TOKEN -w /workspace;
mkdir -p /workspace/$TRACK;
cd /workspace/$TRACK;
/bin/bash -c "while sleep 1000; do :; done"