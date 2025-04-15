#!/bin/bash
MESSAGE=$1
USERNAME=${2:-CLI}
curl -s -X POST -d "name=$USERNAME" -d "message=$MESSAGE" http://192.168.0.136:5000/send
