#!/bin/bash
# script to display response size for URL passed to script
curl -s -w %{size_download}"\n" "$1" -o /dev/null
#!/bin/bash
# Check if URL argument is provided
if [ -z "$1" ]; then
  echo "Please provide a URL"
  exit 1
fi

# Send request using curl and get the size of the response body in bytes
response=$(curl -s -w "%{size_download}" -o /dev/null "$1")

# Display the size of the response body in bytes
echo "Size of the response body: $response bytes"
