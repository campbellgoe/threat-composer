#!/bin/bash

set -e
pdk install:ci --frozen-lockfile
pdk build
pdk workspaces run eslint
