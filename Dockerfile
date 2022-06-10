FROM bitnami/express

RUN mkdir ~/test
COPY . ~/test
WORKDIR ~/test

RUN npm i 
EXPOSE 3000

CMD [ "node", "index.js" ]



# # install deps
# ADD package.json .
# RUN npm install

# # Copy deps
# RUN cp -a /tmp/node_modules /opt/hello-world-app

# # Setup workdir
# # WORKDIR /opt/hello-world-app
# COPY . ~

# # run
# EXPOSE 3000
# CMD ["npm", "start"]