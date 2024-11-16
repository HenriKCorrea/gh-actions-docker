#!/bin/bash

# Start a simple HTTP server listening at port 8080 using netcat (nc)
# The echo command sends an HTTP response to the client
# The response includes the HTTP status line, the Content-Length header, and the response body
# Upon response, the server waits for 1 second before closing the connection
# The while loop ensures that the server keeps running with a new connection for each request

echo "Starting HTTP server at port 8080"

while true
do
    echo -e "HTTP/1.1 200 OK\r\nContent-Length: 13\r\n\r\nHello World!" | nc -l -p 8080 -q 1
    echo "Request served"
done