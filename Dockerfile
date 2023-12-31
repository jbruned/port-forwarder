# Use an official base image with a specific version of Alpine Linux
FROM alpine:latest

# Install socat
RUN apk add --no-cache socat

# Set the working directory in the container
WORKDIR /app

# Copy the entry point script
COPY entrypoint.sh .

# Make the entry point script executable
RUN chmod +x entrypoint.sh

# Expose the port to be used for forwarding
ENV LISTEN_PORT 80
EXPOSE $LISTEN_PORT

# Default values for environment variables
ENV DESTINATION_IP ""
ENV DESTINATION_PORT ""

# Command to run the entry point script
CMD ["/app/entrypoint.sh"]
