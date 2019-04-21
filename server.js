// server.js
// import { xsltProcess, xmlParse } from 'xslt-processor';

// express server
const express = require('express');
const app = express();

// XML and XSLT
const xsltProcess = require('xslt-processor').xsltProcess;
const xmlParse = require('xslt-processor').xmlParse;
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
    var output = processXSLT(xml, xsl);
    return res.send(output);
  })
  .catch(err => {
    console.log("XSLT Processing Error");
    console.log(err);
  });
  
});

// listen for requests :)
const listener = app.listen(process.env.PORT, function() {
  console.log('Your app is listening on port ' + listener.address().port);
});

function processXSLT(xml, xsl) {

  var xml_string = xml;
  var xsl_string = xsl;
  
  xml = new DOMParser().parseFromString(xml_string);
  xsl = new DOMParser().parseFromString(xsl_string);

  /*
  var output = xsltProcess(
    xmlParse(xml_string),
    xmlParse(xsl_string)
  );
  
  console.log(output);
  
  return output;
  */

  return "XSLT Processed" + xsl_string;
  
}
