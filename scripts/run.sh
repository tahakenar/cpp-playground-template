#!/bin/bash

GREEN='\e[32m'
RED='\e[31m'
BLACK='\e[30m'

# Check if the "build" directory exists
if [ ! -d "build" ]; then
    printf "$RED The 'build' directory does not exist. Please build the project first.\n$BLACK"
    exit 1
fi

export PLAYGROUND_PROJECT_NAME="playground"

# Check if the executable exists
EXECUTABLE="./build/$PLAYGROUND_PROJECT_NAME"

if [ ! -x "$EXECUTABLE" ]; then
    printf "$RED The executable '$EXECUTABLE' does not exist or is not executable. Please build the project first.\n$BLACK"
    exit 1
fi

# Run the executable
printf "$GREEN Running $PLAYGROUND_PROJECT_NAME executable...\n$BLACK"
"$EXECUTABLE"
