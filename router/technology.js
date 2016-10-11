'use strict';
const express=require('express');
const db=require('../db/conn');
const EventEmitter=require('events').EventEmitter;

var router=express.Router();

module.exports=router;

router.get(/^\/\d+|\/$/,function(req,res){
	var n=req.url.substring(1)||1;

	var E=new EventEmitter();

	//变量
	var data=[];
	var count=0;
	var page_size=2;
	var currentPage=n;

	//数据解析

	//查询数据库（数据、分页页数）
	var sql='SELECT ID AS id,title AS t,detail AS d FROM news LIMIT '+(n-1)*page_size+','+page_size;
	db.query(sql,function(err,d){
		data=d;

		//处理分页页数
		E.emit('page_count');
	});
	E.on('page_count',function(){
		var sql_fen_count='SELECT CEIL(COUNT(*)/'+page_size+') AS count FROM news';
		db.query(sql_fen_count,function(err,data){
			if(data){
				count=data[0].count;

				E.emit('render_file');
			}
		});
	});

	E.on('render_file',function(){
		res.render('technology',{nav_index:2,
			data:data,
			count:count,
			currentPage:currentPage
		});
	});
});

//搜索接口
router.get('/search',function(req,res){
	var keyWords=req.query.t1;

	var data=[];

	//过滤、判断

	var sql='SELECT ID AS id,title AS t,detail AS d FROM news WHERE title LIKE "%'+keyWords+'%" OR detail LIKE "%'+keyWords+'%"';
	db.query(sql,function(err,data){
		res.render('technology',{
			nav_index:2,
			data:data,
			count:0,
			currentPage:0
		});
	});
});