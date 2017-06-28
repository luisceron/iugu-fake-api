FROM node:6.11-slim

# CONFIG START
  ENV PROJECT_NAME iugu-fake-api
# CONFIG END

ENV PROJECT_PATH /usr/src/$PROJECT_NAME/src/
RUN npm i -g json-server
COPY db.json routes.json $PROJECT_PATH

WORKDIR $PROJECT_PATH
CMD json-server --watch db.json --routes routes.json
