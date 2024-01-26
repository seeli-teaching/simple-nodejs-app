FROM node:18.17.1

COPY . .

RUN npm install

CMD [ "node", "app.js" ]

# Improvements:
# 1. Use a smaller base image
# 2. Set WORKDIR to /app
# 3. Copy package.json and package-lock.json first, then run npm install to take advantage of Docker caching
# 4. Combine the two RUN commands into one
# 5. Expose port 3000
# 5. Set environment variable MESSAGE in the Dockerfile instead of passing it in at runtime
# 6. Pass the environment variable MESSAGE to the Dockerfile instead of hardcoding it (ARG MESSAGE="Hello World!!!!!" ENV MESSAGE=${MESSAGE})
# 7. Use a non-root user (--chown=node:node as parameter to COPY)