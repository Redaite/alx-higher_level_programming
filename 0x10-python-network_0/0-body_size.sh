#!/bin/bash
# Send request using curl and get the size of the response body in bytes
response=$(curl -s -w "%{size_download}" -o /dev/null "$1")

