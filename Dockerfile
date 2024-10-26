# Build stage
FROM oven/bun:1 AS builder

WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN bun install --frozen-lockfile

# Build the binary
RUN bun build main.ts --compile --outfile server

# Final stage
FROM debian:bookworm-slim

WORKDIR /app

# Copy only the compiled binary
COPY --from=builder /app/server ./server

# Run the binary
CMD ["./server"]