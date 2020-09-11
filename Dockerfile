FROM node:10-buster

RUN mkdir /workspace
RUN cd /workspace
WORKDIR /workspace
VOLUME /workspace

RUN npm install --global --loglevel=error nuxt
RUN npm init -y

RUN npm install --global --loglevel=error create-nuxt-app
EXPOSE 3000/tcp
# ENTRYPOINT ["npm", "run"]