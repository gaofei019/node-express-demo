'use strict';
const express=require('express');
const db=require('../db/conn');
const md5=require('../md5').md5;

var router=express.Router();

module.exports=router;

router.get('/',function(req,res){
    res.render('resetpw');
});

//接口
router.post('/',function(req,res){
	var username=req.body.username,
        old_password=req.body.old_password,
        new_password=req.body.new_password,
        sql=`SELECT * FROM user WHERE username="${username}"`;
    db.query(sql,function(err,data){
        if(err){
            res.send(JSON.stringify({code:3,msg:"数据库方面有问题"}));
        }else{
            if(data.length){
                if(data[0].password==md5(md5(old_password))){
                    var M_SQL=`UPDATE user SET password="${md5(md5(new_password))}" WHERE username="${username}"`;
                    db.query(M_SQL,function(err,data){
                        if(err){
                            res.send(JSON.stringify({code:3,msg:"数据库方面有问题"}));
                        }else{
                            res.send(JSON.stringify({code:0,msg:"密码重置成功",data:{url:'/login'}}));
                        }

                    });
                }else{
                    res.send(JSON.stringify({code:1,msg:"旧密码错误"}));
                }
            }else{
                res.send(JSON.stringify({code:1,msg:"此用户名不存在"}));
            }
        }
    });
});



