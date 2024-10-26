FROM oven/bun:1.1.33-slim

WORKDIR /app

# Copy package files
COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile

# Copy all files (now in root directory)
COPY . .

# Update the path to main.ts
CMD ["bun", "run", "main.ts"]