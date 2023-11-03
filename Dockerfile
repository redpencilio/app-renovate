FROM node:20

MAINTAINER Arne Bertrand <arnebertrand@gmail.com>
RUN npm install -g renovate github-app-installation-token

WORKDIR /app
COPY . .
CMD ["./renovate.sh"]
