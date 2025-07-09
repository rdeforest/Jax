# FILENAME: { Jax/src/app.coffee }

express = require 'express'

config     = require './config'
middleware = require './middleware'
routes     = require './routes'

# Application setup
module.exports.app =
  app = express()

middleware.setup app
routes    .setup app

# Server startup
startServer = ->
  port = config.PORT
  
  app.listen port, ->
    console.log """
      Server running on port: #{port}
      Environment:            #{config.NODE_ENV}
      """

# Start if called directly
if require.main is module
  startServer()
