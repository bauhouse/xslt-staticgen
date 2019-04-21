// server.js

// express server
const express = require('express');
const app = express();

// XML and XSLT
const DOMParser = require('xmldom').DOMParser;

// file system
const fs = require('fs');

// directories
const APP = __dirname;
const SRC = APP + '/src';
const DATA = SRC + '/data';
const VIEWS = SRC + '/views';

// http://expressjs.com/en/starter/static-files.html
app.use(express.static('public'));

// http://expressjs.com/en/starter/basic-routing.html
app.get('/', function(request, response) {
  response.sendFile(__dirname + '/views/index.html');
});

// XSLT processing
app.get('/__build', function(req, res) {
  res.send(processXSLT());
});

// listen for requests :)
const listener = app.listen(process.env.PORT, function() {
  console.log('Your app is listening on port ' + listener.address().port);
});

function processXSLT() {
  return "XSLT Processed"
}
