# FILENAME: { Jax/src/routes.coffee }

path = require 'path'
fs = require 'fs'

config = require './config'

# Route handlers
handleApiRoot = (req, res) ->
  res.json
    message: "Jax Express5 App"
    version: "1.0.0"
    timestamp: new Date().toISOString()

handleHealth = (req, res) ->
  res.json
    status: "healthy"
    uptime: process.uptime()

# Serve Vue app for production
handleVueApp = (req, res) ->
  indexPath = path.join __dirname, '..', 'jax-frontend', 'dist', 'index.html'
  
  # Check if production build exists
  if fs.existsSync indexPath
    res.sendFile indexPath
  else
    res.status(404).json
      error: "Vue app not built"
      message: "Run 'npm run build' in jax-frontend directory"

handleNotFound = (req, res) ->
  res.status(404).json
    error: "Not Found"
    path: req.path

# Route configuration
module.exports.setup = (app) ->
  
  # API routes
  app.get '/api',       handleApiRoot
  app.get '/api/health', handleHealth
  
  # Serve Vue app for production (catch-all route)
  if config.NODE_ENV is 'production'
    app.get '*', handleVueApp
  else
    # In development, just serve API info at root
    app.get '/', handleApiRoot
  
  # 404 handler for API routes
  app.use handleNotFound
