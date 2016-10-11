'use strict';
const express=require('express'),
	bodyParser=require('body-parser'),
	multerLib=require('multer'),
	cookieParser=require('cookie-parser'),
	cookieSession=require('cookie-session'),
	consolidate=require('consolidate');

//服务器
var app=express();
app.listen(8081);

//配置上传目录
var multer=multerLib({dest:'upload'});

//配置模板引擎
app.set('views','template');
app.set('view engine','html');
app.engine('html',consolidate.ejs);

//使用中间件
app.use(bodyParser.urlencoded({extended:false}));
app.use(multer.any());
app.use(cookieParser());
app.use(cookieSession({
	name:'cccc',
	keys:['a','b','c'],
	maxAge:20*60*1000
}));

//路由
app.use('/',require('./router/index'));
app.use('/technology',require('./router/technology'));
app.use('/about',require('./router/about'));
app.use('/blog',require('./router/blog'));
app.use('/contact',require('./router/contact'));
app.use('/single-page',require('./router/single-page'));

//静态资源
app.use(express.static('static'));

//404
app.use(function(req,res){
	res.render('404',{});
});
