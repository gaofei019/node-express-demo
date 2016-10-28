'use strict';
const express=require('express');
const db=require('../db/conn');
const md5=require('../md5').md5;

var router=express.Router();

module.exports=router;

router.get('/',function(req,res){
	if(req.session.username){
		res.render('index',{
			nav_index:1,
            username:req.session.username
		});
        console.log(req.session.username);
	}else{
		res.render('login');
	}
});

//接口
router.post('/',function(req,res){
	var username=req.body.username,
		password=req.body.password,
		sql=`SELECT * FROM user WHERE username="${username}"`;
        //console.log(req.body);
	db.query(sql,function(err,data){
        if(err){
            res.send(JSON.stringify({err:3,msg:"数据库方面有问题"}));
        }else{
            if(data.length){
                if(data[0].password==md5(md5(password))){
                	req.session.username=username;
                    res.send(JSON.stringify({code:0,msg:"登录成功",data:{url:"/"}}
                        ));
                }else{
                    res.send(JSON.stringify({code:1,msg:"密码错了"}));
                }
            }else{
                res.send(JSON.stringify({
                    code:2,
                    msg:"用户名不存在"
                }));
            }
        }
    });
});



