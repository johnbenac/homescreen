FROM node:24-alpine

WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Use Docker-specific Vite config
COPY vite.config.docker.ts vite.config.ts

# Expose Vite dev server port
EXPOSE 5174

# Run Vite dev server
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
