// server.js

// express server
const express = require('express');
const app = express();

// child process module
const exec = require('child_process').exec;

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
  res.send(processXSLT(true));
});

// listen for requests :)
const listener = app.listen(process.env.PORT || 3000, function() {
  console.log('Your app is listening on port ' + listener.address().port);
});

function processXSLT(debug) {

  var build = exec('cd src && ./build',
    (error, stdout, stderr) => {
      if (debug) {
        console.log(stdout);
        console.log(stderr);
        if (error !== null) {
          console.log(`exec error: ${error}`);
        }
      }
    });

  return "XSLT Processed"
}
