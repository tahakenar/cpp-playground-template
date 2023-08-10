#!/bin/bash

if [ ! -d "build" ]; then
    echo "Creating build directory..."
    mkdir build
fi

cd build

# make a clean build if requested
CLEAN_BUILD=0
if [[ "$1" == "--clean" ]]; then
    CLEAN_BUILD=1
fi
if [ "$CLEAN_BUILD" -eq 1 ]; then
    echo "Performing clean build..."
    rm -rf *
fi

echo "Running CMake..."
export PLAYGROUND_PROJECT_NAME="playground"
cmake -DPROJECT_NAME="$PLAYGROUND_PROJECT_NAME" ..

echo "Running make..."
make