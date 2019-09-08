const express = require('express');
const path = require('path');
const app = express();

const PORT = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname, '../build')));

app.get('/', function(req, res) {
  res.sendFile(path.join(__dirname, '../build', 'index.html'));
});

app.get('/health', function(req, res) {
  res.send({"status" : "OK"});
});

app.listen(PORT, console.log(`App running on port ${PORT}!`));
