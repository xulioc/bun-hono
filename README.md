# Bun Hono Template

A template for deploying a Bun + Hono API on Railway.

## ✨ Features

- [Bun](https://bun.sh) JavaScript Runtime
- [Hono](https://hono.dev/) Web Framework
- Logger Middleware
- CORS Support
- TypeScript

## 📝 Notes

This template comes with:

### Endpoints

- `GET /` - Welcome message
- `GET /health` - Health check endpoint
- `GET /users` - User home
- `GET /users/profile` - User profile endpoint

### Development

```bash
# Start the development server
bun run dev

# Start the production server
bun run start
```

### Docker 

```bash
# Build the image
docker build -t bun-hono-api .

# Run the container
docker run -p 3000:3000 bun-hono-api
```
