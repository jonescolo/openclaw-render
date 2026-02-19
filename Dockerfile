FROM node:20

# Create app directory
WORKDIR /app

# Install OpenClaw locally (not global)
RUN npm install openclaw

# Expose the default OpenClaw port
EXPOSE 3000

# Start OpenClaw using the local binary
CMD ["./node_modules/.bin/openclaw", "start"]
