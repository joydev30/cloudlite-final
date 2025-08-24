# Stage 1: build frontend
FROM node:18-alpine AS frontend-builder
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ .
RUN npm run build

# Stage 2: build & run backend
FROM node:18-alpine AS backend
WORKDIR /app/backend
COPY backend/package*.json ./
# Use --omit=dev which is the modern equivalent of --production
RUN npm install --omit=dev
COPY backend/ .

# Copy frontend build into backend public folder
COPY --from=frontend-builder /app/frontend/dist ./public
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "index.js"]
