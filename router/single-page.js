'use strict';
const express=require('express');
const db=require('../db/conn');

var router=express.Router();

module.exports=router;

router.get(/^\/\d+|\/$/,function(req,res){
	var id=req.url.substring(1);

	var sql='SELECT content AS c,title AS t FROM news WHERE id='+id;

	db.query(sql,function(err,data){
		res.render('single-page',{
			nav_index:2,
			dataMsg:data[0]
		});
	});
});