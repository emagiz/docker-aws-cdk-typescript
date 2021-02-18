FROM node

LABEL maintainer="eMagiz"

RUN mkdir /cdk

RUN npm install -g aws-cdk

WORKDIR /cdk

COPY deploy.sh /usr/sbin
RUN chmod +x /usr/sbin/deploy.sh

CMD ["/usr/sbin/deploy.sh"]