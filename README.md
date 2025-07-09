# Jax - Life Operating System

An operating system for your life, named after a cat. This is the implementation of **Jax Step 1** - a working agenda checklist for daily processes.

## Features

- **Clean Interface**: Professional "Jax - Processes" header with ocean color scheme
- **11 Agenda Items**: Complete daily process checklist with detailed notes
- **Functional Checkboxes**: Click to mark items as completed (state maintained during session)
- **Responsive Design**: Works well on desktop and mobile devices
- **Screen Sharing Optimized**: High contrast and clear typography for presentations

## Architecture

- **Backend**: Express 5 server written in CoffeeScript
- **Frontend**: Vue 3 single-page application with Vite
- **Development**: Concurrent development servers for optimal workflow
- **Production**: Express serves static Vue build

## Quick Start

### Development Mode (Recommended)

Run both frontend and backend servers concurrently:

```bash
# Install dependencies
npm install
cd jax-frontend && npm install && cd ..

# Run both servers
npm run dev:both
```

This will start:
- **Vue dev server**: http://localhost:5173/ (with hot reloading)
- **Express backend**: http://localhost:4000/ (API endpoints)

### Individual Server Control

```bash
# Backend only (CoffeeScript with auto-rebuild)
npm run dev

# Frontend only (Vue with hot reloading)
npm run dev:frontend

# Backend production mode
npm start
```

### Production Build

```bash
# Build everything for production
npm run build:all

# Set production environment and start
NODE_ENV=production npm start
```

In production mode, Express serves the Vue app at http://localhost:4000/

## API Endpoints

- `GET /` - API information (development) or Vue app (production)
- `GET /api` - API information
- `GET /api/health` - Health check with uptime

## Agenda Items

The system includes 11 daily process items:

1. **Take blood pressure** - Manual process with cuff and measurements
2. **Start today's log entry** - Add entry to Workflowy meeting log
3. **Calendar review and chat** - Review days and mood self-assessment
4. **Tao** - Read 365 Tao Daily Meditations and discuss
5. **Affirmations** - Recite affirmations from Workflowy
6. **Check snail mail** - Pick up, open, and deal with mail
7. **Email** - Check and process three Google accounts
8. **Non-daily** - Flip to non-daily tab and follow process
9. **One-off tasks** - Flip to Tasks tab and follow process
10. **Brush teeth**
11. **Summarize day in log entry**

## Color Scheme

Ocean-inspired theme:
- **Primary Blue**: `#1976d2` (headers, active states)
- **Light Blue**: `#e3f2fd` (backgrounds)
- **California Sand**: `#d7ccc8` (borders, accents)
- **White**: `#ffffff` (main background)
- **Dark Blue-Gray**: `#263238` (text)

## Technology Stack

- **Backend**: Node.js, Express 5, CoffeeScript
- **Frontend**: Vue 3, Vite 7
- **Build**: Cake (CoffeeScript build tool)
- **Development**: Concurrent servers with CORS support

## File Structure

```
Jax/
├── src/                    # Backend CoffeeScript source
│   ├── app.coffee         # Main application
│   ├── config.coffee      # Configuration (port 4000)
│   ├── middleware.coffee  # CORS, static files, logging
│   └── routes.coffee      # API routes and Vue app serving
├── lib/                   # Compiled JavaScript (auto-generated)
├── jax-frontend/          # Vue 3 application
│   ├── src/
│   │   ├── App.vue        # Main app component
│   │   ├── components/
│   │   │   └── ProcessesTab.vue  # Agenda checklist
│   │   └── main.js        # Vue app entry point
│   └── dist/              # Production build (auto-generated)
├── package.json           # Backend dependencies and scripts
└── Cakefile              # CoffeeScript build configuration
```

## Development Workflow

1. **Make backend changes**: Edit files in `src/`, auto-rebuilds with `npm run dev`
2. **Make frontend changes**: Edit files in `jax-frontend/src/`, hot reloads automatically
3. **Test integration**: Both servers run simultaneously with CORS configured
4. **Production build**: `npm run build:all` creates optimized builds

## Next Steps

This is Step 1 of the Jax system. Future enhancements may include:
- Data persistence (database integration)
- User authentication
- Multiple process templates
- Progress tracking and analytics
- Mobile app
- Integration with external services (Workflowy, calendar, etc.)

---

*"An operating system for your life, named after a cat"*
