FROM node:18-alpine

# Install PostgreSQL client
RUN apk add --no-cache postgresql-client

RUN npm i --save-prod -g @interval/server
EXPOSE 3000
CMD [ "interval-server", "db-init"]