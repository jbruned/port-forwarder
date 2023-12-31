# Docker port forwarder

This is a really simple docker image which just listens on the specified port and forwards the traffic to a given IP address and port.

## Setup

Some environment variables are required to run the container:
- `LISTEN_PORT`: the port to listen on
- `DESTINATION_IP`: the IP address to forward to
- `DESTINATION_PORT`: the port to forward to

If you want to redirect traffic to the host, you can use the special IP address `host.docker.internal` (see [Docker documentation](https://docs.docker.com/desktop/networking/#i-want-to-connect-from-a-container-to-a-service-on-the-host) for more information). In particular, if you are using a *Synology* NAS, you can add the following argument to the `docker run` command: `--add-host=host.docker.internal:host-gateway`.
