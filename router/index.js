'use strict';
const express=require('express');

var router=express.Router();

module.exports=router;

router.get('/',function(req,res){
	res.render('index',{
		nav_index:1
	});
});