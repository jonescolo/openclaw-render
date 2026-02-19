FROM node:20

# Install OpenClaw globally
RUN npm install -g openclaw

# Expose the default OpenClaw port
EXPOSE 3000

# Start OpenClaw
CMD ["openclaw", "start"]
