# Step 1: Use a Node.js base image
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g typescript
COPY . .
RUN npm run build

CMD ["node", "dist/your_sudoku_solver.js"]
