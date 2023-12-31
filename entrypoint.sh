#!/bin/sh

# Set default values if not provided
: ${LISTEN_PORT:=80}
: ${DESTINATION_IP:=""}
: ${DESTINATION_PORT:=""}

# Check if destination IP and port are provided
if [ -z "$DESTINATION_IP" ] || [ -z "$DESTINATION_PORT" ]; then
    echo "Error: Destination IP and port must be provided."
    exit 1
fi

# Run socat to forward traffic
socat TCP-LISTEN:$LISTEN_PORT,fork,reuseaddr TCP:$DESTINATION_IP:$DESTINATION_PORT

