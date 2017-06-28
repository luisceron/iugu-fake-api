FROM node:6.11-slim

# CONFIG START
  ENV PROJECT_NAME iugu-fake-api
# CONFIG END

ENV PROJECT_PATH /usr/src/$PROJECT_NAME/src/
RUN npm i -g json-server
VOLUME $PROJECT_PATH/db.json
VOLUME $PROJECT_PATH/routes.json

WORKDIR $PROJECT_PATH
CMD json-server --watch db.json --routes routes.json
