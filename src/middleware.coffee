# FILENAME: { Jax/src/middleware.coffee }

express = require 'express'

# Middleware configuration
module.exports.setup = (app) ->
  
  # JSON parsing
  app.use express.json()
  
  # URL encoded parsing
  app.use express.urlencoded extended: true
  
  # Request logging
  app.use (req, res, next) ->
    timestamp = new Date().toISOString()
    console.log "#{timestamp} #{req.method} #{req.path}"
    next()
