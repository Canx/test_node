var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('¡Hola mundo!');
});

app.listen(8080, function () {
  console.log('Aplicación ejemplo escuchando en el puerto 3000');
});

