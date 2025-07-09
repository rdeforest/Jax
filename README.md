# Jax Express5 App

A minimal Express5 application written entirely in CoffeeScript with Cakefile automation.

## Features

- **Express 5.0**: Latest version of Express framework
- **CoffeeScript**: All source code written in CoffeeScript
- **Minimal Dependencies**: Only Express and CoffeeScript
- **Cakefile Automation**: Build system using Cake tasks
- **Auto-compilation**: Automatic build on `npm install`

## Project Structure

```
├── src/                 # CoffeeScript source files
│   ├── app.coffee      # Main application
│   ├── config.coffee   # Configuration
│   ├── middleware.coffee # Express middleware
│   └── routes.coffee   # Route handlers
├── lib/                # Compiled JavaScript (auto-generated)
├── Cakefile           # Build automation
└── package.json       # Dependencies and scripts
```

## Installation

```bash
npm install
```

This will automatically compile the CoffeeScript files to JavaScript.

## Usage

### Start the server
```bash
npm start
```

### Development mode (watch for changes)
```bash
npm run dev
```

### Available Cake tasks
```bash
cake build    # Compile CoffeeScript to JavaScript
cake clean    # Remove compiled files
cake dev      # Watch and rebuild on changes
cake test     # Build and run the application
```

## API Endpoints

- `GET /` - Root endpoint with app info
- `GET /health` - Health check endpoint

## Configuration

Environment variables:
- `PORT` - Server port (default: 3000)
- `NODE_ENV` - Environment (default: development)

## Development

The application follows these principles:
- Minimal dependencies
- Self-documenting code
- Vertical alignment for readability
- Functions defined after first use
- Implicit returns in CoffeeScript
