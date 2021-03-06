# Create image from nodejs base image
FROM node:10

# Clone the repo from github
RUN git clone https://github.com/AndyFrench11/resume-website.git

# Change workind directory to the cloned repo
WORKDIR /resume-website

# Install all the dependencies
RUN npm install --global gulp
RUN npm install

# Expose port
EXPOSE 3000

# Run the application
# CMD ["gulp"]
CMD ["npm", "start"]