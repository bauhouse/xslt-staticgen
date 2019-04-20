// server.js

// express server
const express = require('express');
const app = express();

// XSLT
const xsltjs = require('xsltjs');
const XSLT = xsltjs.XSLT;

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
app.get('/index', function(req, res) {

  var xml_file = DATA + '/views/index.xml';
  var xsl_file = VIEWS + '/index.xsl';
  
  var read_xml = new Promise((resolve, reject) => { 
    fs.readFile(xml_file, (err, data) => {  
      if (err) throw err;
      resolve( data.toString() );
    });
  });

  var read_xsl = new Promise((resolve, reject) => { 
    fs.readFile(xsl_file, (err, data) => {  
      if (err) throw err;
      resolve( data.toString() );
    });
  });
  
  Promise.all([read_xml, read_xsl])
  .then(files => {
    var xml = files[0];
    var xsl = files[1];
    processXSLT(xml, xsl);
  });
  
  res.send("Index");
});

// listen for requests :)
const listener = app.listen(process.env.PORT, function() {
  console.log('Your app is listening on port ' + listener.address().port);
});

function processXSLT(xml, xsl) {

  console.log(xml);
  console.log(xsl);
  
  XSLT
  .process(xml, xsl)
  .then(
    (resultXML) => {
      return console.log("XML");
    },
    (exception) => {
      return console.log("Error");
    }
  );
}
