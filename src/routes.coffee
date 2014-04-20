require 'coffee-script'
site = require './controllers/site'

module.exports = (app)->
  app.get('/', site.index)
