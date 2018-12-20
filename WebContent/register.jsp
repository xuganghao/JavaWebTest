<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link  rel="stylesheet" href="css/register.css">
    <link rel="icon" href="pic/tu.png"/>
</head>
<body>
    <% 		String message1 = "";
    String msg1 = (String)request.getAttribute("msg1");
    if(msg1 != null){
    message1 = msg1;
    }
    %>
    <%
    String message2 = "";
    String msg2 =(String) request.getAttribute("msg2");
    if(msg2 != null){
    message2 = msg2;
    }
    %>
<div class="bottom_background">
    <p class="t1">相见</p>
    <p class="t2">从相见开始相恋</p>

    <nav id="nav">
        <ul>
            <li class="act x1">手机号注册</li>
            <li  >邮箱注册</li>
        </ul>
    </nav>

    <div id="container">
        <section class="tab">
            <div class="from">
                <form action="/Training/RegisterServlet" onsubmit="return checkForm();" method="post">
                    <p class="p6 p">用户名</p> <input id="Username" class=" dname-input input1" type="text" name="name" placeholder="请输入用户名"onblur="Num1()">
                    <span id="confirmName">不能设置中文用户名</span>
                    <font color="red" ><b style="position: absolute; left : 170px;top: -90px;"><%=message1 %></b></font>
                    <font color="red" style="position: absolute; left : 170px;top: -90px;"><b><%=message2 %></b></font>
                    <br>
                    <span id="confirmName"></span>
                    <p class="p7 p">手机号</p> <input  id="telNum" class="  dnum-input input1" type="telphone" name="telephone" placeholder="仅限大陆手机号" onblur="CheckNum()"> <span id="confirmtel"></span>
                    <input class=" num " type="text" name="nume" placeholder="短信验证"><br>
                    <input class="yan" type="button" onclick="ji()" value="获取验证码">
                    <p class="p8 p">密码</p> <input id="password" class="  dpassword-input input1" type="password" name="password" placeholder="请输入密码" onblur="paswd()"><br>
                    <span id="confirmPwd"></span>
                    <p class="p9 p">确认密码</p><input id="repassword" class="tpassword-input-again input1" type="password" name="repassword" placeholder="请确认密码"onblur="validate()">
                    <span id="confirmMsg"></span><br>
                    <input class="xie"  type="checkbox" checked="checked" name="online" value="tongyi" /><p class="xieyi">同意协议并接受《服务条款》</p>
                    <input class="land" type="submit" onclick="Login()" value="手机号注册">
                </form>
            </div>
 

        </section>
        <section class="tab" >
            <div class="from">
                <form action=" /Training/RegisterEmailServlet" onsubmit="return checkForm1();" method="post" >
                    <p class="p1 p">用户名</p> <input  id="usernames" class=" name-input input" type="text" name="name" placeholder="请输入用户名" onblur="Num2()"><br>
                     <span id="confirmName1">不能设置中文用户名</span>
                    <span id="confirmName1"></span>
                    <p class="p2 p">密码</p> <input  id="pwd" class="  password-input input"type="password" name="password" placeholder="请输入密码"onblur="paswd1()"><br>
                    <span id="confirmPwd1"></span>
                    <p class="p3 p">确认密码</p><input id="repwd" class="  password-input-again input" type="password" name="repassword" placeholder="请确认密码" onblur="emailres()"><br>
                    <p class="p4 p">邮箱</p><input  class="  email-input input"type="email" name="email" placeholder="请输入邮箱">
                    <br>
                    <input class="xie1"  type="checkbox" name="online" checked="checked" value="tongyi" /><p class="xieyi1">同意协议并接受《服务条款》</p>
                    <input id="submit"  class="btn" type="submit" value="邮箱注册">
                    <span id="error"></span><br>
                </form>
            </div>

        </section>

    </div>
</div>

<script>
    window.onload=function () {
        var nav=document.getElementById('nav');
        var oNav=nav.getElementsByTagName('li');

        var container=document.getElementById('container');
        var oDiv=container.getElementsByClassName('tab');
        for(var i=0;i<oNav.length;i++){
            oNav[i].index=i;
            oNav[i].onclick=function () {
                for(var i=0;i<oNav.length;i++){
                    oNav[i].className='';
                    oDiv[i].style.display="none";

                }
                this.className='act';
                oDiv[this.index].style.display="block"


            }
            for(var m=1;m<oNav.length;m++){
                oNav[m].className='';
                oDiv[m].style.display="none";


            }
        }



    };

    function validate() {
        var pwd1 = document.getElementById("password").value;
        var pwd2 = document.getElementById("repassword").value;
     var confirmMsg = document.getElementById("confirmMsg");
        var msg = "";

     	if (pwd1 != pwd2){
            msg = "密码必须保持一致";
        }
        confirmMsg.innerHTML = msg;
        return msg == "";
    }
function  emailres() {
    var pwd3 = document.getElementById("pwd").value;
    var pwd4 = document.getElementById("repwd").value;
    var error = document.getElementById("error");
    var msgs = "";
    if (pwd3 != pwd4){
        msgs = "密码必须保持一致";
    }
    error.innerHTML = msgs;
    return msgs == "";
}

function  Num1() {
	 var regex = /^[a-zA-Z_]\w{0,9}$/;
    var username = document.getElementById("Username").value;
    var configname1 =document.getElementById("confirmName");
    var msg3 = "";
    if (!username) {
        msg3 = "用户名必须填写";
    }else if (!regex.test(username))
        msg3 = "用户名不合法";
    configname1.innerHTML = msg3;
    return msg3 == "";
}
    function  Num2() {

        var username = document.getElementById("usernames").value;
        var configname2 =document.getElementById("confirmName1");
        var msg3 = "";
        if (!username) {
            msg3 = "用户名必须填写";
        }else if (!regex.test(username))
            msg3 = "用户名不合法";
        configname2.innerHTML = msg3;
        return msg3 == "";
    }
    function  paswd() {

        var password = document.getElementById("password").value;
        var confirmPwd =document.getElementById("confirmPwd");
        var msg4= "";
        if (!password) {
            msg4 = "密码必须填写";
        }
        confirmPwd.innerHTML = msg4;
        return msg4 == "";
    }
    function  paswd1() {

        var password1 = document.getElementById("pwd").value;
        var confirmPwd1 =document.getElementById("confirmPwd1");
        var msg5= "";
        if (!password1) {
            msg5= "密码必须填写";
        }
        confirmPwd1.innerHTML = msg5;
        return msg5 == "";
    }

    function checkForm() {			// 验证整个表单
        var bUsername = Num1();
        var bPassword = paswd();
        var bConfirm = validate();
        return bUsername && bPassword && bConfirm ;	// return false后, 事件将被取消
    }

    function checkForm1() {
        var bUsername1 = Num2();
        var bPassword1 = paswd1();
        var bConfirm1 = emailres();
        return bUsername1 && bPassword1 && bConfirm1 ;
    }
    function CheckNum() {
        var  regex1 =   /^1[34578]\d{9}$/;
        var telephoneNum = document.getElementById("telNum").value;
        var confirmNUM =document.getElementById("confirmtel");
        var msg5= "";
        if (!telephoneNum) {
            msg5= "手机号必须填写";
        }else if (!regex1.test(telephoneNum))
            msg5 = "手机号不合法";
        confirmNUM.innerHTML = msg5;
        return msg5 == "";
    }
</script>
</body>
</html>