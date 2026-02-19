FROM nvidia/openhands:latest

# Expose the default OpenHands port
EXPOSE 3000

# Start OpenHands
CMD ["openhands", "start", "--host", "0.0.0.0", "--port", "3000"]
