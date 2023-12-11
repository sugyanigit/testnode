FROM node
RUN mkdir /Documents/dir

WORKDIR /Documents/dir

ENV  PATH /Documents/dir/node_modules/.bin:$PATH

COPY package*.json /Documents/dir

RUN npm install

COPY . /Documents/dir

EXPOSE 4000

CMD ["npm","start"]
