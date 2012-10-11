express   = require 'express'

app = express.createServer()

app.get '/', (req, res) ->
	res.send 'Hello World'

port = process.env.PORT || 4000
app.listen port, () ->
  console.log "listening on port #{port}"