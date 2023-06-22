FROM node:lts AS runtime
WORKDIR /coming-soon

COPY . .

RUN npm install
RUN npm run build

ENV HOST=lifelike.clothing
ENV PORT=3000
EXPOSE 3000
CMD node ./dist/server/entry.mjs
