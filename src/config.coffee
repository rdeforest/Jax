# FILENAME: { Jax/src/config.coffee }

# Environment configuration
module.exports =
  PORT:     process.env.PORT     or 4000
  NODE_ENV: process.env.NODE_ENV or 'development'
