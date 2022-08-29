FROM node:18-alpine

# Create app directory
RUN mkdir /movie-analyst-ui
WORKDIR /movie-analyst-ui

# Install app dependencies
COPY package*.json /movie-analyst-ui/

RUN npm Install

# Bundle app source
COPY . /movie-analyst-ui
RUN npm install

ARG BACK_HOST

ENV BACK_HOST = $BACK_HOST

EXPOSE 3030
CMD [ "npm", "start" ]