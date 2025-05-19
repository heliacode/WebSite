# Use official Bun image
FROM oven/bun:latest

# Set working directory
WORKDIR /app

# Copy heliatest folder contents
COPY heliatest/ ./

# Expose port 8080
EXPOSE 8080

# Start the Bun static server to serve index.html and static files
CMD ["bun", "run", "index.html", "--port", "8080", "--host", "0.0.0.0"]
