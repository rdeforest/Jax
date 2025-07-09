# FILENAME: { Jax/src/middleware.coffee }

express = require 'express'
path = require 'path'

config = require './config'

# Middleware configuration
module.exports.setup = (app) ->
  
  # CORS for development (when Vue dev server runs on different port)
  if config.NODE_ENV is 'development'
    app.use (req, res, next) ->
      res.header 'Access-Control-Allow-Origin', 'http://localhost:5173'
      res.header 'Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS'
      res.header 'Access-Control-Allow-Headers', 'Content-Type, Authorization'
      if req.method is 'OPTIONS'
        res.sendStatus 200
      else
        next()
  
  # JSON parsing
  app.use express.json()
  
  # URL encoded parsing
  app.use express.urlencoded extended: true
  
  # Static file serving for production Vue build
  distPath = path.join __dirname, '..', 'jax-frontend', 'dist'
  app.use express.static distPath
  
  # Request logging
  app.use (req, res, next) ->
    timestamp = new Date().toISOString()
    console.log "#{timestamp} #{req.method} #{req.path}"
    next()
