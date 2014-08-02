'use strict';
var fs = require('fs');
var got = require('got');

var SOURCE = 'https://raw.githubusercontent.com/xiaozi/foolish-list/master/ips.txt';

got(SOURCE, function(err, data) {
  fs.writeFile('ip.txt', data, function(err){
    if(err) {
      console.log(err);
    }
    console.log('Done!');
  });
});