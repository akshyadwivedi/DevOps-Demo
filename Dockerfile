FROM node:18
WORKDIR /Demo-React
COPY . .
RUN npm install
RUN npm run build
RUN npm install -g serve@13.0.4
CMD [ "serve", "-s", "-l", "3000", "build" ]