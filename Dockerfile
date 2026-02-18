FROM ghcr.io/openclawhq/openclaw:latest

# Expose the default OpenClaw port
EXPOSE 3000

# Start OpenClaw
CMD ["openclaw", "start"]
