path    = require "path"

require 'coffee-script'

express = require "express"
bodyParser = require "body-parser"

routes  = require "./routes"


app = express()

#app.use express.methodOverride()
app.use(bodyParser(
  uploadDir:'/img',
  limit:10000000 #10M limit
  ))

views_root =  "#{__dirname}/views"
app.set('view engine', 'ejs')
app.set('views', views_root)

routes(app)

port = 10010
app.listen(port)
console.log "Up and running at #{port}"


module.exports = app
