require 'coffee-script'
site = require './controllers/site'
img  = require './controllers/image'

module.exports = (app)->

  app.get('/', site.index)

  
  app.get('/image/upload', img.upload)
