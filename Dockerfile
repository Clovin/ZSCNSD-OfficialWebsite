FROM daocloud.io/library/node
MAINTAINER SanXian
EXPOSE 9594
WORKDIR ZSCNSD-OfficialWebsite
COPY ./ ./
RUN rm -rf .git && sed -i "s#https://zsxyww.com#http://127.0.0.1:9594#" src/api/create-api-server.js
RUN npm install && npm run build
CMD ["npm","start"]
