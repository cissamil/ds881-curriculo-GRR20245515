FROM node:lts-alpine

WORKDIR /app

# Copia apenas os arquivos de dependências primeiro (otimização de cache)
COPY minor-meridian/package*.json ./
RUN npm install

COPY minor-meridian/ .

EXPOSE 4321
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]