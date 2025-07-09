# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Architecture

This is a full-stack web application with:
- **Backend**: CoffeeScript-based Express.js server (root directory)
- **Frontend**: Vue.js 3 application with Vite (jax-frontend/ directory)

## Development Commands

### Backend (Root Directory)
```bash
# Development with file watching
npm run dev

# Build CoffeeScript to JavaScript
cake build

# Clean compiled files
cake clean

# Run application
npm start
```

### Frontend (jax-frontend/ Directory)
```bash
# Development server with hot reload
npm run dev

# Production build
npm run build

# Preview production build
npm run preview

# Lint with auto-fix
npm run lint
```

## Code Architecture

### Backend Structure
- **src/**: CoffeeScript source files
  - `app.coffee`: Main application entry point with Express setup
  - `config.coffee`: Environment configuration and app metadata
  - `middleware.coffee`: Express middleware configuration
  - `routes.coffee`: Route handlers for API endpoints
- **lib/**: Auto-generated JavaScript files (do not edit directly)

### Frontend Structure
- **src/**: Vue.js source files
  - `main.js`: Application entry point with Vue app initialization
  - `App.vue`: Root component
  - `components/`: Reusable Vue components
  - `views/`: Page-level components
  - `router/`: Vue Router configuration
  - `stores/`: Pinia state management stores

### Key Patterns
- **CoffeeScript**: Uses implicit returns and vertical alignment for readability
- **Minimal dependencies**: Project prioritizes simplicity over comprehensive tooling
- **Self-documenting code**: Code structure and naming should be clear without excessive comments
- **Modern frontend**: Uses Vue 3 Composition API, Vite, and ES modules

## Testing

Currently no testing framework is configured. The `cake test` command only builds and runs the application.

## Important Notes

- **Backend language**: All backend code is in CoffeeScript, not JavaScript
- **Build system**: Use Cake for backend builds, Vite for frontend builds
- **API endpoints**: Minimal REST API with root (`/`) and health (`/health`) endpoints
- **No TypeScript**: Frontend uses JSConfig for IDE support instead of TypeScript
- **Development philosophy**: Emphasizes minimal dependencies and clean architecture