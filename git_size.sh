#!/usr/bin/env bash

if [ "$#" -eq 2 ]; then
    echo "$(echo "scale=2; $(curl https://api.github.com/repos/$1/$2 2>/dev/null | grep size | head -1 | tr -dc '[:digit:]') / 1024" | bc)MB"
fi
