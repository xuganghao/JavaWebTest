<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "domain.SelfInfo"%>
      <%@ page import = "Dao.SelfInfoDao"%>
         <%@ page import = "domain.Eduex" %>
       <%@ page import = "domain.Workex" %>
              <%@ page import = "domain.Emoex" %>
                 <%@ page import = "Dao.EduexDao" %>
       <%@ page import = "Dao.EmoexDao" %>
 <%@ page import = "Dao.WorkexDao" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>修改个人信息</title>
	 <link rel="icon" href="pic/tu.png"/>
   
    <script>
        function changepic() {
            var reads = new FileReader();
            f = document.getElementById('file').files[0];
            reads.readAsDataURL(f);
            reads.onload = function (e) {
                document.getElementById('show').src = this.result;
            };
        }
    </script>


    <script type="text/javascript">
        // JS实现选项卡切换
        window.onload = function () {
            var myTab = document.getElementById("tab");    //整个div
            var myUl = myTab.getElementsByTagName("ul")[0];//一个节点
            var myLi = myUl.getElementsByTagName("li");    //数组
            var myDiv = myTab.getElementsByTagName("div"); //数组

            for (var i = 0; i < myLi.length; i++) {
                myLi[i].index = i;
                myLi[i].onclick = function () {
                    for (var j = 0; j < myLi.length; j++) {
                        myLi[j].className = "off";
                        myDiv[j].className = "hide";
                    }
                    this.className = "on";
                    myDiv[this.index].className = "show";
                }
            }
        }
    </script>
    <script>

    </script>
    <style>
        a {
            text-decoration: none;
            color: black;
        }

        a:hover {
            text-decoration: none;
            color: #336699;
        }

        #tab {

            width: 650px;
            padding: 5px;
            height: 620px;
            margin: 30px auto;
            background-color: rgba(70, 149, 194, 0.3)
        }

        #tab ul {

            margin-left: 15px;
            width: 580px;
            list-style: none;
            height: 30px;
            line-height: 30px;
            border-bottom: 2px #a2f7ff solid;
        }

        #tab ul li {
            border-radius: 75px;
            background: #FFF;
            cursor: pointer;
            float: left;
            list-style: none;
            height: 29px;
            line-height: 29px;
            padding: 0px 10px;
            margin: 0px 24px;
            border: 1px solid #BBB;
            border-bottom: 2px solid #f8b4ff;
        }

        #tab ul li.on {
            border-right: 2px solid #2e9cda;
            border-left: 2px solid #2e9cda;
            border-top: 2px solid #2e9cda;
            border-bottom: 2px solid #FFF;
        }

        #tab div {

            position: relative;
            height: 500px;
            width: 540px;
            border: 1px solid #336699;
            margin-left: -300px;
            left: 50%;
            padding: 20px;
            padding-left: 40px;
        !important;
        }

        .hide {
            display: none;
        }

        .put input {

            border: 1px solid #ccc;
            padding: 7px 0px;
            border-radius: 10px;
            padding-left: 5px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s

        }

        .put input:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 4px 4px rgba(109, 237, 255, 0.98), 0 0 8px rgb(248, 180, 255);
            box-shadow: inset 0 4px 4px rgba(109, 237, 255, 0.85), 0 3px 8px rgba(248, 180, 255, 0.78)

        }

        @media screen and (max-width: 700px) {
          .show {
                width: 300px;
                height: 400px;
            }
        }
        @media screen and (max-width: 500px) {
            .show {
                width: 200px;
                height: 300px;
            }
        }
   
        .centers{
    position: absolute;
    text-decoration: none;
    font-weight: bold;
    font-size: 14px;
    top: 20px;
    left: 90%;
    color: red;
}
    </style>
</head>
<body background="pic/self_p.jpg">
	<%
		String account = request.getParameter("account");
		session.setAttribute("account", account);
	%>
	<%
		SelfInfoDao selfDao = new SelfInfoDao();
		SelfInfo info =selfDao.find(account);
		if(info != null) {
		info.setXm(info.getXm().equals("null") ? "真实姓名" : info.getXm());
		info.setBirth(info.getBirth().equals("null")? "1997-04-12" :info.getBirth());
		info.setPhone(info.getPhone().equals("null") ? "11位手机号码" : info.getPhone());
		info.setCity(info.getCity().equals("null")? "现居城市" :info.getCity());
		info.setWeb(info.getWeb().equals("null")? "example.com" :info.getWeb());
		info.setEmail(info.getEmail().equals("null") ? "用于收取通知，找回密码" : info.getEmail());
		info.setAddress(info.getAddress().equals("null")? "当前通讯地址" :info.getAddress());
	}
	%>
	<%
		WorkexDao workexdao = new WorkexDao();
		Workex workex = workexdao.find(account);
		if(workex != null){
			workex.setCompany(workex.getCompany().equals("null")?"公司/组织名称":workex.getCompany());
			workex.setPosition(workex.getPosition().equals("null")?"如:Java工程师":workex.getPosition());
			workex.setTime(workex.getTime().equals("null")?"开始时间":workex.getTime());
			workex.setFitime(workex.getFitime().equals("null")?"结束时间":workex.getFitime());
		}
	%>
	<%
		EduexDao eduexdao = new EduexDao();
		Eduex eduex = eduexdao.find(account);
		if(eduex != null) {
			eduex.setName(eduex.getName().equals("null") ? "公司/组织名称" : eduex.getName());
			eduex.setStudy(eduex.getStudy().equals("null")? "如:Java工程师":eduex.getStudy());
			eduex.setTime(eduex.getTime().equals("null")?"入学时间":eduex.getTime());
			eduex.setFitime(eduex.getFitime().equals("null")?"毕业时间":eduex.getFitime());
	}
	%>
	<a href = "selfinfo.jsp?account=<%=account%>" class="centers">退出</a>
<div id="tab">
    <ul>
        <li class="on">个人档案</li>
        <li class="off">工作经历</li>
        <li class="off">感情经历</li>
        <li class="off">教育经历</li>
    </ul>
    <div id="firstPage" class="show">
        <!--<input type="file" accept="image/*">-->

        <form  action="/Training/SetInfoServlet"  method="post" enctype="multipart/form-data">
            <img src="" id="show" width="100px" height="100px" >
            <input id="file" class="filepath" onchange="changepic(this)" type="file" value="上传真人头像" name = "headImage"><br>


        <span style="float: left;margin-right: 100px" class="put">
            <p>登陆姓名</p>
            <input type="text" value="<%=info.getXm() %>" onfocus="if(this.value == '真实姓名'){
            this.value = ''}" onblur="if (this.value==''){this.value='真实姓名'}" name="username">
            <p>出生日期</p>
            <input type="text" value="<%=info.getBirth() %>" onfocus="if(this.value == '1997-04-12'){
            this.value = ''}" onblur="if (this.value==''){this.value='1997-04-12'}" name="birth">
             <p>手机号码</p>
            <input type="text" value="<%=info.getPhone() %>" onfocus="if(this.value == '11位手机号码'){
            this.value = ''}" onblur="if (this.value==''){this.value='11位手机号码'}" name="telephone">
             <p>现居城市</p>
            <input type="text" value="<%=info.getCity() %>" onfocus="if(this.value == '现居城市'){
            this.value = ''}" onblur="if (this.value==''){this.value='现居城市'}"name="city">
        </span>
        <span class="put" style="margin-top: 10px">
            <p>性别</p>
            <input type="radio" name="sex" value="保密" checked="checked" onfocus="if(this.value == 'example.com'){
            this.value = ''}" onblur="if (this.value==''){this.value='example.com'}">保密
            <input type="radio" name="sex" value="男" onfocus="if(this.value == 'example.com'){
            this.value = ''}" onblur="if (this.value==''){this.value='example.com'}">男
            <input type="radio" name="sex" value="女"onfocus="if(this.value == 'example.com'){
            this.value = ''}" onblur="if (this.value==''){this.value='example.com'}">女
            <p style="margin-top: 25px">个人网站</p>
            <input type="text" value="<%=info.getWeb() %>" onfocus="if(this.value == 'example.com'){
            this.value = ''}" onblur="if (this.value==''){this.value='example.com'}" name="web">
             <p>Email</p>
            <input type="text" value="<%=info.getEmail() %>" onfocus="if(this.value == '用于收取通知，找回密码'){
            this.value = ''}" onblur="if (this.value==''){this.value='用于收取通知，找回密码'}" name="email">
             <p>通讯地址</p>
            <input type="text" value="<%=info.getAddress() %>" onfocus="if(this.value == '当前通讯地址'){
            this.value = ''}" onblur="if (this.value==''){this.value='当前通讯地址'}"name="address" >
        </span><br>
        <span style="position: absolute ;margin-top: 20px;margin-left:-110px;width: 200px;left: 50%" class="put">
            <input type="reset" style="width: 60px;text-align:center" value="取消" >
            <input type="submit" style="background:#a2f7ff;width:60px;text-align:center" value="保存"  onclick="alert('保存成功')">
        </span>
        </form>
    </div>
    <form action = "/Training/WorkServlet" method="post">
    <div id="secondPage" class="hide">
        <span style="float: left;margin-right: 20px" class="put">
            <p>公司/组织名称</p>
            <input type="text" value="<%=workex.getCompany() %>" onfocus="if(this.value == '公司/组织名称'){
            this.value = ''}" onblur="if (this.value==''){this.value='公司/组织名称'}" name = "company"><br>
            <p>起止时间</p>
            <input type="date" name = "time">-<input type="date" name= "fltime">
        </span>
        <span class="put">
            <p>职位头衔</p>
            <input type="text" value="<%=workex.getPosition() %>" onfocus="if(this.value == '如:Java工程师'){
            this.value = ''}" onblur="if (this.value==''){this.value='如:Java工程师'}" name = "position"><br>
            <p>工作城市</p>
            <input type="text" placeholder="如:上海">
        </span>
        <p>相关技术</p>
        <input type="text" value="标签，如:Java可使用逗号，分号;隔开" onfocus="if(this.value == '标签，如:Java可使用逗号，分号;隔开'){
            this.value = ''}" onblur="if (this.value==''){this.value='标签，如:Java可使用逗号，分号;隔开'}" style="width: 450px ;display: block" class="put">
        <p>职位描述</p>
        <textarea style="width: 480px;height: 50px;" value="在职期间做了什么工作，解决了什么问题，做了什么贡献？" onfocus="if(this.value == '在职期间做了什么工作，解决了什么问题，做了什么贡献？'){
            this.value = ''}" onblur="if (this.value==''){this.value='在职期间做了什么工作，解决了什么问题，做了什么贡献？'}"></textarea><br>
        <span style="position:absolute;margin-left: 190px;margin-top: 20px"  class="put">
            <input type="reset" style="width: 60px;text-align:center" value="取消">
            <input type="submit" style="background:#a2f7ff;width:60px;text-align:center" value="保存" onclick="alert('保存成功')">
        </span>
    </div>
    </form>
   	<form action = "/Training/EmoServlet" method="post">
    <div id="thirdPage" class="hide">
<span style="">
    <p>婚姻状况</p>
    <input type="radio" name="marry" value="未婚" checked="checked">未婚
    <input type="radio" name="marry" value="已婚">已婚
    <input type="radio" name="marry" value="离异">离异
    <p style="margin-top: 20px">情感经历:</p>
   <textarea style="width: 500px;height: 100px;margin-left: 10px" name= "descr"></textarea>
</span>
        <span style="margin-left:190px;top:200px;" class="put">
            <input type="reset" style="width: 60px;text-align:center" value="取消">
            <input type="submit" style="background:#a2f7ff;width:60px;text-align:center" value="保存" onclick="alert('保存成功')">
        </span>
    </div>
    </form>
    <form action="/Training/EduServlet"  method="post">
    <div id="fourPage" class="hide">
        <span style="float: left;margin-right: 20px" class="put">
            <p>院校名称</p>
            <input type="text" value="院校名称" onfocus="if(this.value == '院校名称'){
            this.value = ''}" onblur="if (this.value==''){this.value='院校名称'}"  name = "name"><br>
            <p>起止时间</p>
            <input type="date"  name= "time">-<input type="date" name = "fltime">
        </span>
        <span class="put">
            <p>所学专业</p>
            <input type="text" value="如:Java工程师" onfocus="if(this.value == '如:Java工程师'){
            this.value = ''}" onblur="if (this.value==''){this.value='如:Java工程师'}" name="study"><br>
            <p>学历</p>
            <select  style="width: 140px;height: 35px;border-radius: 10px;" >
                <option>大专</option>
                <option>本科</option>
                <option>研究生</option>
                <option>硕士</option>
                <option>博士</option>
            </select>
        </span>
        <p>相关技术</p>
        <input type="text" value="标签，如:Java可使用逗号，分号;隔开" onfocus="if(this.value == '标签，如:Java可使用逗号，分号;隔开'){
            this.value = ''}" onblur="if (this.value==''){this.value='标签，如:Java可使用逗号，分号;隔开'}"style="width: 450px">
        <p>取得成就</p>
        <textarea style="width: 480px;height: 50px;" value="在校期间做了什么工作，解决了什么问题，做了什么贡献？" onfocus="if(this.value == '在校期间做了什么工作，解决了什么问题，做了什么贡献？'){
            this.value = ''}" onblur="if (this.value==''){this.value='在校期间做了什么工作，解决了什么问题，做了什么贡献？'}"></textarea><br>
        <span style="position:absolute;margin-left: 190px;margin-top: 20px" class="put">
             <input type="reset" style="width: 60px;text-align:center" value="取消" >
            <input type="submit" style="background:#a2f7ff;width:60px;text-align:center" value="保存" onclick="alert('保存成功')"
            >
        </span>
    </div>
    </form>
</div>



</body>
</html>
