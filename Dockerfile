FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y git build-essential

# Create app directory
WORKDIR /app

# Clone OpenHands
RUN git clone https://github.com/All-Hands-AI/OpenHands.git .

# Install OpenHands
RUN pip install --upgrade pip
RUN pip install -e .

# Expose OpenHands port
EXPOSE 3000

# Start OpenHands
CMD ["openhands", "start", "--host", "0.0.0.0", "--port", "3000"]
