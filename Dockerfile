# Usa Node 18 leve
FROM node:18-alpine

# Define diretório de trabalho
WORKDIR /app

# Copia apenas os manifests primeiro (melhora cache)
COPY package*.json ./

# Instala dependências
RUN npm install --production

# Copia o restante do código
COPY . .

# Define variável de ambiente padrão da porta
ENV PORT=8080

# Expõe a porta
EXPOSE 8080

# Comando para iniciar
CMD ["npm", "start"]
