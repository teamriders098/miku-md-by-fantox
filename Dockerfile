FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "."]


#FROM quay.io/jayjay/miku
#RUN git clone https://github.com/jayjay-ops/Miku-MD /root/jayjay-ops
#WORKDIR /root/jayjay-ops/
#RUN npm i
#EXPOSE 8000
#CMD ["node", "."]


