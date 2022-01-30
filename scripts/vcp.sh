#!/bin/bash

cp --no-clobber --verbose --recursive "$1" "$2" | ts "%Y-%m-%dT%H:%M:%S" | tee -a "$3"
