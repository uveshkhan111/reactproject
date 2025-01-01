# Use the Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose the React development server port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]