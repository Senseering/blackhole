var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('Healthy');
});


app.listen(80, function () {
    console.log('Example app listening on port 80!');
});

var app2 = express();

app2.get('/', function (req, res) {
    res.send('Healthy');
});


app2.listen(443, function () {
    console.log('Example app listening on port 443!');
});