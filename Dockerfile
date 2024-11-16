# Alpine Linux is a better choice for a base image than Ubuntu because it is much smaller and more secure.
FROM alpine:latest

# Install bash and netcat
RUN apk add --no-cache bash netcat-openbsd

# Copy the script into the container
COPY app.sh /app.sh

# Make the script executable
RUN chmod +x /app.sh

# Expose port 8080
EXPOSE 8080

# Run the script
CMD ["/app.sh"]