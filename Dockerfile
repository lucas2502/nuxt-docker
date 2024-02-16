## Step 1
FROM node:18-alpine as builder

WORKDIR /app
COPY package*.json /app
COPY pnpm-lock.yaml /app

ENV NODE_ENV="development"

RUN apk update && apk upgrade
RUN apk add --no-cache python3 make g++

COPY . .

# Install pnpm
RUN npm install -g pnpm

RUN pnpm install

ENV PATH ./node_modules/.bin/:$PATH


RUN pnpm build 

## Step 2
FROM node:18-alpine

WORKDIR /app

ENV NODE_ENV=production
ENV NUXT_APP_BASE_URL=/
ENV API_BASE_URL=https://api.example2.com


RUN apk update && apk upgrade

COPY --from=builder /app/.output .output

EXPOSE 3000
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD ["node", ".output/server/index.mjs"]
