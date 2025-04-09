FROM node:20-alpine

# Install pnpm globally
RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

COPY react-app/pnpm-lock.yaml react-app/package.json ./
RUN pnpm install

COPY react-app/ .

EXPOSE 5173 

CMD ["pnpm", "dev"]
