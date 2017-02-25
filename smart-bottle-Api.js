const express = require('express')
const app = express()
app.use(express.static('public'))
const bodyParser = require('body-parser')
const jsonEncoder = bodyParser.json()
const dbInterface = require('./databaseInterface')

app.post('/adduser/:username/:addr', jsonEncoder, function (request, response) {
  const name = request.params.username
  const addr = request.params.addr
  dbInterface.insertUser(name, addr)
  .then((result)=>{
    console.log(result)
    response.send('SuccessFull')
  })
  .catch((err)=>{
    console.log(err.original.detail)
    response.sendStatus(500)
  })
})

app.post('/addbottle/:bottlename/:quantity', jsonEncoder, function (request, response) {
  const name = request.params.bottlename
  const quantity = request.params.quantity
  dbInterface.insertBottle(name, quantity)
  .then((result)=>{
    console.log(result)
    response.send('SuccessFull')
  })
  .catch((err)=>{
    console.log(err.original.detail)
    response.sendStatus(500)
  })
})

app.post('/addbottle/:bottlename/:quantity', jsonEncoder, function (request, response) {
  const name = request.params.bottlename
  const quantity = request.params.quantity
  dbInterface.insertBottle(name, quantity)
  .then((result)=>{
    console.log(result)
    response.send('SuccessFull')
  })
  .catch((err)=>{
    console.log(err.original.detail)
    response.sendStatus(500)
  })
})

app.listen(8080)
