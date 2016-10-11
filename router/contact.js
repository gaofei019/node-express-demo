'use strict';
const express=require('express');
const db=require('../db/conn');

var router=express.Router();

module.exports=router;

router.get('/',function(req,res){
	res.render('contact',{
		nav_index:5
	});
});

//接口
router.post('/add',function(req,res){
	var name=req.body.name;
	var email=req.body.email;
	var subject=req.body.subject;

	//过滤、判断数据

	//入库
	var sql='INSERT INTO message(ID,name,email,subject) VALUES(NULL,"'+name+'","'+email+'","'+subject+'")';
	db.query(sql,function(err,data){
		if(err){
			res.send({code:1200,msg:"数据库有问题"})
		}else{
			res.send({code:200,msg:"添加成功"});
		}
	});
});



