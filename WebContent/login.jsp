<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link  rel="stylesheet" href="css/Login.css">
    <link rel="icon" href="pic/tu.png"/>
</head>
<body>
	<%
	String message = "";
	String msg = (String)request.getAttribute("msg");
	if(msg != null){
	message = msg;
	}
	%>
	<%
	String message1 = "";
	String msg1 = (String)request.getAttribute("msg1");
	if(msg1 != null){
	message1 = msg1;
	}
	%>
<div class="bottom_background">
    <p class="t1">相见</p>
    <p class="t2">从相见开始相恋</p>
</div>
<div class=" bg">
    <p class="title">用户登录</p>
    <div class="from">
        <form action="/Training/loginServlet" method="post">
            <p class="p1 p">账号:</p> <input class=" name-input input" type="text" name="Username" placeholder="请输入账号">
            <font color="red" style="position: absolute;top: 50px; "><b><%=message %></b></font>
            <br>
            <p class="p2 p">密码:</p> <input class="  password-input input"type="password" name="Password" placeholder="请输入密码">
        	<font color="red" style="position: absolute;top: 125px; "><b><%=message1 %></b></font>
            <br>
            <p class="qk">快速登录</p>
            <img  class="quick" src="pic/kuai.png">
            <input class="rember"  type="checkbox" checked="checked" name="online" value="登录状态" /><p class="reb">记住登录状态</p>
            <p class="intentp">为了遇见那个他</p>
            <a class="intent" href="register.jsp">立即注册</a>
            <input class="land" type="submit" value="登录">
        </form>                                                                                                     
    </div>

</div>

</body>
</html>