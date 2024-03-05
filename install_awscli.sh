#!/usr/bin/env bash

if [[ -n "$BREAK_PACKAGES" ]]; then
    pip3 install awscli --break-system-packages 
else 
    pip3 install awscli
fi