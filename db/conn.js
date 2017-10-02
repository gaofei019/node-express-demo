'use strict';
const mysql=require('mysql');

var db=mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'root',
	database: '2016-9-25'
});

module.exports=db;