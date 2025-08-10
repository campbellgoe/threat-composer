#!/bin/bash

set -e

if [[ " $@ " =~ " --clean-cache " ]]; then
  rm -rf ./node_modules
  yarn cache clean
fi

pdk install --immutable
pdk build
pdk workspaces run eslint