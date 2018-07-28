#!/bin/bash

exercism configure --token=$TOKEN -w /workspace;
mkdir -p /workspace/$TRACK;
cd /workspace/$TRACK;
bash
