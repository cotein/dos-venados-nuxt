# Archivo: Dockerfile

# --- Etapa 1: Builder (Construcción) ---
FROM node:20.15.0 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# --- Etapa 2: Production (Producción) ---
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./

# --- LÍNEA CORREGIDA ---
# Añadimos --ignore-scripts para evitar que se ejecute "nuxt prepare"
#RUN npm install --production --ignore-scripts

#COPY --from=builder /app/.output ./.output
#EXPOSE 3000
#CMD ["node", ".output/server/index.mjs"]

RUN npm install

# Copy all files
COPY . .

# Build app
RUN npm run build

CMD ["node", ".output/server/index.mjs"]

EXPOSE 3000