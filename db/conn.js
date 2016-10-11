'use strict';
const mysql=require('mysql');

var db=mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'admin123',
	database: '2016-9-25'
});

module.exports=db;