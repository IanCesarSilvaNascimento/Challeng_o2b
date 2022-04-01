const express = require('express');
const mysql = require('mysql');

const app = express();

const connection = mysql.createConnection({
  host: 'desafio-mysql-container',
  user: 'root',
  password: 'secret',
  database: 'desafio'
});

connection.connect();

app.get('/', function(req, res) {
  connection.query('SELECT * FROM desafio_item', function (error, results) {

    if (error) { 
      throw error
    };

    res.send(results.map(item => ({ name: item.name, email: item.email })));
  });
});


app.listen(9001, '0.0.0.0', function() {
  console.log('Listening on port 9001');
})