FROM node:16-alpine3.16

WORKDIR /app
ADD . /app

RUN apk add gcompat libstdc++ libuuid vips-dev build-base jpeg-dev pango-dev cairo-dev imagemagick --no-cache&& \
ln -s /lib/libresolv.so.2 /usr/lib/libresolv.so.2
RUN npm install

CMD ["index.js"]

