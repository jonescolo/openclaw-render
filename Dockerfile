FROM node:20

WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone OpenClaw from GitHub
RUN git clone https://github.com/OpenClawHQ/openclaw.git .

# Install dependencies
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
