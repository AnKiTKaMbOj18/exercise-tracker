
# Use a lighter version of Node as a parent image
FROM node:10

# Set the working directory
RUN mkdir -p /client/exercise-tracker
WORKDIR /client/exercise-tracker

# copy package.json into the container
COPY package*.json ./

# install dependencies
RUN npm install

# Copy the current directory contents into the container
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 3001

# Run the app when the container launches
CMD ["npm", "start"]
