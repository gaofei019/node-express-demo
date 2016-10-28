'use strict';
const express=require('express');
const db=require('../db/conn');
const md5=require('../md5').md5;

var router=express.Router();

module.exports=router;

router.get('/',function(req,res){
    res.render('reg');
});

//接口
router.post('/',function(req,res){
	var username=req.body.username,
        password=req.body.password,
        sql=`SELECT * FROM user WHERE username="${username}"`;
    db.query(sql,function(err,data){
        if(err){
            res.send(JSON.stringify({code:3,msg:"数据库方面有问题"}));
        }else{
            if(data.length){
                res.send(JSON.stringify({code:1,msg:"此用户名已经存在"}));
            }else{
                var I_SQL=`INSERT INTO user VALUES(null,"${username}","${md5(md5(password))}")`;
                db.query(I_SQL,function(err,data){
                    if(err){
                        res.send(JSON.stringify({code:3,msg:"数据库方面有问题"}));
                    }else{
                        res.send(JSON.stringify({code:0,msg:"注册成功",data:{url:'/login'}}));
                    }

                });
            }
        }
    });
});



