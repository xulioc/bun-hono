# Bun Hono Template

A template for deploying a Bun + Hono API, production ready with bun binary compilation.

## ✨ Features

- [Bun](https://bun.sh) JavaScript Runtime
- [Hono](https://hono.dev/) Web Framework
- Binary compilation for production
- Logger Middleware
- CORS Support
- TypeScript

## 💁‍♀️ How to use

### Development

```bash
# Install dependencies
bun install

# Start development server with hot reload
bun run dev
```

### Production Build

```bash
# Build the binary
bun run build

# Run the compiled binary
./server
```

### Docker

```bash
# Build the image (includes binary compilation)
docker build -t bun-hono-api .

# Run the container
docker run -p 3000:3000 bun-hono-api
```

### Railway Deployment

The template is configured to automatically:
1. Build the binary during Docker build stage
2. Run the optimized binary in production

### Endpoints

- `GET /` - Welcome message
- `GET /health` - Health check endpoint
- `GET /users` - User home
- `GET /users/profile` - User profile endpoint

## 🔧 Environment Variables

- `PORT` - Server port (default: 3000)
- `NODE_ENV` - Environment mode (development/production)

In development:
- Uses hot reload
- Detailed error messages
- CORS allows all origins

In production:
- Runs compiled binary
- Limited error information
- Configured CORS
- Optimized for performance