FROM node:20-slim
ENV NODE_ENV=production HOME=/root PORT=17371 HOST=0.0.0.0 PUBLIC_URL=http://192.168.1.10:17371
WORKDIR /app
COPY package.json ./
COPY node_modules ./node_modules
COPY dist ./dist
EXPOSE 17371
CMD ["node", "dist/index.js"]
