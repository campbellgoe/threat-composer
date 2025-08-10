#!/bin/bash

set -e

rm -rf ./node_modules
yarn cache clean

pdk install --immutable
pdk build
pdk workspaces run eslint
