#!/bin/bash

case $1 in  
    start)
        echo "start"
        ;;
    stop)
        echo "stop"
        ;;
    *)
        echo "invalid"
        exit 1
        ;;
esac