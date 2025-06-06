# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy dependency declarations
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of your files into the container
COPY . .

# Default command when running the container
CMD ["npm", "test"]
