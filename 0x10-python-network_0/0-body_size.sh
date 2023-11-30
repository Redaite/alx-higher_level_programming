#!/bin/bash
# Send request using curl and get the size of the response body in bytes
curl -s -w %{size_download}"\n" "$1" -o /dev/null                                              
