FROM node:18-alpine
RUN npm i --save-prod -g @interval/server
EXPOSE 3000
# Run db-init and continue to start, allowing db-init to fail
CMD ["/bin/sh", "-c", "interval-server db-init || true; interval-server start"]
