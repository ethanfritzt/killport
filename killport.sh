#!/bin/bash

port=$1

# Find PID using the port number
pid=$(lsof -ti tcp:$port)

if [ -z "$pid" ]; then
    echo "No process found running on port $port"
    exit 1
else
    echo "Found process $pid running on port $port"
    kill -9 $pid
    echo "Process $pid has been killed"
fi