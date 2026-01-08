#!/usr/bin/env bash

ARG="$1"

if [ -z "$ARG" ]; then
    # No argument provided, run original commands
    go run main.go -r 3 -q 1000
else
    # Argument provided, add -a ARG to each command
    go run main.go -r 3 -q 1000 -a "$ARG"
fi
