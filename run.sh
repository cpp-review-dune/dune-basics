#!/usr/bin/env bash

DIR=$(pwd)/build
if [ -d "$DIR" ]; then
  printf '%s\n' "Removing Lock ($DIR)"
  rm -rf "$DIR"
fi

[ -d build/dune-env ] || python -m venv --system-site-packages build/dune-env
cmake -S dune-basics -B build