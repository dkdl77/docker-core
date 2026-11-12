# syntax=docker/dockerfile:1

FROM alpine:3.24

# Install busybox httpd (busybox-extras)
RUN apk add --no-cache busybox-extras

# Copy the script and grant execution permission
COPY app.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/app.sh

# Set the script as the main process (PID 1)
CMD ["/usr/local/bin/app.sh"]