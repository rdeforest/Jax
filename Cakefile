# FILENAME: { Jax/Cakefile }

fs     = require 'fs'
{exec} = require 'child_process'

# Configuration
SRC_DIR = 'src'
LIB_DIR = 'lib'

# Build tasks
task 'build', 'Compile CoffeeScript to JavaScript', ->
  console.log 'Building CoffeeScript files...'
  
  ensureDirectory LIB_DIR
  
  exec "coffee --compile --output #{LIB_DIR} #{SRC_DIR}", (err, stdout, stderr) ->
    if err
      console.error 'Build failed:', stderr
      process.exit 1
    else
      console.log 'Build completed successfully'

task 'clean', 'Remove compiled files', ->
  console.log 'Cleaning build directory...'
  
  exec "rm -rf #{LIB_DIR}", (err) ->
    if err
      console.error 'Clean failed:', err
    else
      console.log 'Clean completed'

task 'dev', 'Watch and rebuild on changes', ->
  console.log 'Starting development mode...'
  
  ensureDirectory LIB_DIR
  
  exec "coffee --watch --compile --output #{LIB_DIR} #{SRC_DIR}", (err, stdout, stderr) ->
    if err
      console.error 'Watch failed:', stderr
      process.exit 1

task 'test', 'Run the application', ->
  invoke 'build'
  
  setTimeout ->
    console.log 'Starting application...'
    exec 'npm start', (err, stdout, stderr) ->
      console.log stdout if stdout
      console.error stderr if stderr
  , 1000

# Utility functions
ensureDirectory = (dir) ->
  unless fs.existsSync dir
    fs.mkdirSync dir, recursive: true
    console.log "Created directory: #{dir}"
