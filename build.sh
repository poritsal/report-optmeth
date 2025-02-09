#!/bin/bash

g++ -Wall -Werror daemon.cpp -o my_daemon

if [ $? -eq 0 ]; then
    echo "Build successful"
else
    echo "Build failed"
    exit 1
fi

# Cleanup intermediate files if any
rm -f *.o
