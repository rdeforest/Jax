# FILENAME: { Jax/src/routes.coffee }

# Route handlers
handleRoot = (req, res) ->
  res.json
    message: "Jax Express5 App"
    version: "1.0.0"
    timestamp: new Date().toISOString()

handleHealth = (req, res) ->
  res.json
    status: "healthy"
    uptime: process.uptime()

handleNotFound = (req, res) ->
  res.status(404).json
    error: "Not Found"
    path: req.path

# Route configuration
module.exports.setup = (app) ->
  
  # API routes
  app.get '/',       handleRoot
  app.get '/health', handleHealth
  
  # 404 handler
  app.use handleNotFound
