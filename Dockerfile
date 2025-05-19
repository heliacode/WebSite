# Use official Bun image
FROM oven/bun:latest

# Set working directory
WORKDIR /app

# Copy heliatest folder contents
COPY ./ ./

# Expose port 3000
EXPOSE 3000

# Start the Bun static server to serve index.html and static files
CMD ["bun", "server.js", "--host", "0.0.0.0"]
