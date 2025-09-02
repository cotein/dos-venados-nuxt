# Author : Vongkeo KSV

# Pull the base image 
FROM node:20.19.0 as build-stage

# set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

COPY nuxt.config.ts ./
# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Build app
RUN npm run build

RUN npm install tailwindcss

# Expose the correct port
EXPOSE 3000

# Set environment variables for production
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000

# Start the application
CMD ["node", ".output/server/index.mjs"]