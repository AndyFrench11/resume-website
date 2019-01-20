# Create image from nodejs base image
FROM node:6

# Clone the repo from github
RUN git clone https://github.com/AndyFrench11/resume-website.git

# Change workind directory to the cloned repo
WORKDIR /resume-website

# Install all the dependencies
RUN sudo npm install --global gulp
RUN npm install

# Expose port
EXPOSE 3003

# Run the application
# CMD ["gulp"]
CMD ["gulp", "deploy"]