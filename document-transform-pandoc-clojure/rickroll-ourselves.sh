#!/usr/bin/env bash

pandoc --standalone -i index.html \
    --filter rickroll.sh \
    -o rickroll-ourselves.html
