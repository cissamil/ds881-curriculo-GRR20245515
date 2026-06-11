FROM node:22-alpine

ENV NODE_ENV=development

WORKDIR /app

# Copiar apenas package.json primeiro para instalar dependências
COPY package*.json ./
RUN npm ci

# Copiar o restante (bind mount no compose substituirá em dev)
COPY . .

EXPOSE 8080

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "8080"]
