#!/bin/bash

echo "Copying \"$1\" to \"$2\"" | ts "%Y-%m-%dT%H:%M:%S" | tee -a "$3"
cp --no-clobber --verbose --recursive "$1" "$2" | ts "%Y-%m-%dT%H:%M:%S" | tee -a "$3"
