var s3client = require('./s3client');
var latest = require('./latest.json');

var onSuccess = function (data) {
	console.log('Latest log saved.', data);
};

var onError = function (error) {
  console.log('Something went wrong :-(', error);
};

s3client.storeReading(latest, onSuccess, onError);