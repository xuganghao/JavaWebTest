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
           
              <%@ page import = "domain.Appo" %>
                 <%@ page import = "Dao.AppoDao" %>   
                 <%@ page import="java.util.List"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
     <link rel="icon" href="pic/tu.png"/>
      <link rel="stylesheet" href="css/Selfs.css">
</head>
<body>
	<% 
		String Account = "";
		if(request.getParameter("account")!=null){
			Account = request.getParameter("account");
		}else{
			Account = (String)request.getAttribute("account");
		}
       
 		/* if(request.getAttribute("account")!=null){
        	Account = (String)request.getAttribute("account");
        } */
       /*  if(request.getParameter("account") != null){
        Account = request.getParameter("account");
        } */
        
        SelfInfoDao selfDao = new SelfInfoDao();
        SelfInfo info =selfDao.find(Account);
        if(info != null) {
        info.setImg(info.getImg().equals("null")?"images/photo.png":info.getImg());
        info.setXm(info.getXm().equals("null") ? "暂无" : info.getXm());
        info.setBirth(info.getBirth().equals("null")? "暂无" :info.getBirth());
        info.setPhone(info.getPhone().equals("null") ? "暂无" : info.getPhone());
        info.setCity(info.getCity().equals("null")? "暂无" :info.getCity());
        info.setSex(info.getSex().equals("null") ? "暂无" : info.getSex());
        info.setWeb(info.getWeb().equals("null")? "暂无" :info.getWeb());
        info.setEmail(info.getEmail().equals("null") ? "暂无" : info.getEmail());
        info.setAddress(info.getAddress().equals("null")? "暂无" :info.getAddress());
        }
        EduexDao eduexdao = new EduexDao();
        Eduex eduex = eduexdao.find(Account);
        if(eduex != null) {
        eduex.setName(eduex.getName().equals("null") ? "学校名称" : eduex.getName());
        eduex.setStudy(eduex.getStudy().equals("null")? "所学专业":eduex.getStudy());
        eduex.setTime(eduex.getTime().equals("null")?"入学时间":eduex.getTime());
        eduex.setFitime(eduex.getFitime().equals("null")?"毕业时间":eduex.getFitime());
        }
        WorkexDao workexdao = new WorkexDao();
        Workex workex = workexdao.find(Account);
        if(workex != null) {
        workex.setCompany(workex.getCompany().equals("null")?"公司名称":workex.getCompany());
        workex.setPosition(workex.getPosition().equals("null")?"职位":workex.getPosition());
        workex.setTime(workex.getTime().equals("null")?"开始时间":workex.getTime());
        workex.setFitime(workex.getFitime().equals("null")?"结束时间":workex.getFitime());
        }
        EmoexDao emoexdao = new EmoexDao();
        Emoex emoex = emoexdao.find(Account);
        if(emoex != null) {
        emoex.setMarry(emoex.getMarry().equals("null")?"婚姻状况":emoex.getMarry());
        emoex.setJl(emoex.getJl().equals("null")?"情感经历":emoex.getJl());
        }
        %>
         <% 	
        String Uri = "";
        if(info.getImg()!=null){
        Uri =  info.getImg().replace("images", "images\\");
        }
        %> 
        <%
        	String acc = "";
        	if(request.getParameter("Account") != null){
        		 acc = request.getParameter("Account");
        	}
        	Appo appo = new Appo();
        	AppoDao appodao = new AppoDao();
        	appo.setAccount(acc);
        	appo.setSign(Account);
        	boolean b = appodao.update(appo);
        	
        %>
        
<div class="bg">
    <div class="title">
        <p class="t1">相见</p>
        <p class="t2">从相见开始相恋</p>
        <a href="ReallyHomePage.jsp?account=<%=Account%>" class="index">首页</a>
    </div>
    <div id="menu">
        <ul id="ulmeanu">
            <li><a>个人档案信息</a></li>
            <li><a>发布约会信息</a></li>
            <li><a>加入约会信息</a></li>

        </ul>

    </div>
   
    <div id="container">

        <section class="tab">

            <div>
                <a class="bian" href="setselfinfo.jsp?account=<%=Account%>" >编辑</a>
            </div>
            <div style="margin: 0 auto;width: 1000px">
                <p style="margin-left: 0px">个人档案</p>

                <div style="float: left;margin-right: 100px;margin-left: 0px">
                    <p>真人头像</p>
                    <img src="<%=Uri %>" width="200px" height="200px">
                </div>
                <div style="float: left;margin-left: -60px">
                    <p>真人姓名</p>
                    <p style="font-family: 楷体"><%=info.getXm()%></p>
                    <p>出生日期</p>
                    <p style="font-family: 楷体"><%=info.getBirth() %></p>
                    <p>手机号码</p>
                    <p style="font-family: 楷体"><%=info.getPhone() %></p>
                    <p>现居城市</p>
                    <p style="font-family: 楷体"><%=info.getCity() %></p>
                </div>
                <div style="float: left ; margin-left: 180px">
                    <p>性别</p>
                    <p style="font-family: 楷体"><%=info.getSex() %></p>
                    <p>个人网站</p>
                    <p style="font-family: 楷体"><%=info.getWeb() %></p>
                    <p>Email</p>
                    <p style="font-family: 楷体"><%=info.getEmail() %></p>
                    <p>通讯地址</p>
                    <p style="font-family: 楷体"><%=info.getAddress()%></p>
                </div>
                <hr style="background-color: #CC8888;width: 100%">
                <div style="float: left;margin-right: 150px">
                    <p>工作经历</p>
                    <p style="font-family: 楷体"><%=workex.getCompany()%> - <%=workex.getPosition() %></p>
                    <p style="font-family: 楷体"><%=workex.getTime() %> - <%=workex.getFitime() %></p>
                </div>
                <div style="float: left;margin-right: 190px">
                    <p>教育经历</p>
                    <p style="font-family: 楷体"><%=eduex.getName() %> - <%=eduex.getStudy() %></p>
                    <p style="font-family: 楷体"><%=eduex.getTime() %> -- <%=eduex.getFitime() %></p>
                </div>
                <div style="float: left;margin-right: 150px">
                    <p>情感经历</p>
                    <p style="font-family: 楷体"><%=emoex.getMarry() %></p>
                    <p style="font-family: 楷体"><%=emoex.getJl()%></p>
                </div>

            </div>
        </section>
      <%
      		List<Appo>list1 = appodao.foundAll(Account);
      %>

        <section class="tab">
            	<c:forEach var = "name" items="<%=list1 %>">
            <center>
                <dl style="margin-left: 50px;margin-right: 100px">
                    <dd>
                        <div style="height: 130px;border:1px solid lightpink;margin-right: 50px">
                            <dl>
                                <dt style="height: 40px">
                                    <div style="float:left;width: 100px;margin-left: 50px">
                                       <strong><%=Account %></strong> 
                                    </div>
                                    <span style="width: 100px;">
                          			 ${name.getTime()}
                                </span>
                                    <span style="width: 100px;margin-left: 20px">
                  					${name.getSite()}
                                </span>
                                </dt>
                                <dd  class="fenge" style="color: #ff837e;height: 5px"></dd>
                                <dd>
                                    <div class="introduce"  style=" font-size:20px; height: 80px;float: left  ;margin-left: 40px ;font-family: 方正舒体">
                         ${name.getDescr()}
                                    </div>
                                    <div style="clear: both;"></div>
                                </dd>
                            </dl>
                        </div>
                        <div style="clear: both;"></div>
                    </dd>
            </center>
             </c:forEach>
            </section>
           
 		<%
      		List<Appo> list = appodao.found(Account);
     	%>
     	
     	
     <section class="tab">
      <c:forEach var = "item" items="<%=list %>">
        	 <center>
                <dl style="margin-left: 50px;margin-right: 100px">
                    <dd>
                        <div style="height: 130px;border:1px solid lightpink;margin-right: 50px">
                            <dl>
                                <dt style="height: 40px">
                                    <div style="float:left;width: 100px;margin-left: 50px">
                                        <strong>${item.getAccount()}</strong>
                                    </div>
                                    <span style="width: 100px;">
                                ${item.getTime()}
                                </span>
                                    <span style="width: 100px;margin-left: 20px">
                                 ${item.getSite()}
                                </span>
                                </dt>
                                <dd  class="fenge" style="color: #ff837e;height: 5px"></dd>
                                <dd>
                                    <div class="introduce"   style=" font-size:20px; height: 80px;float: left  ;margin-left: 40px ;font-family: 方正舒体">
                                     ${item.getDescr()}
                                    </div>
                                    <div style="clear: both;"></div>
                                </dd>
                        </div>
                        <div style="clear: both;"></div>
                    </dd>
            </center>
            </c:forEach>
       
        </section> 

    </div>
</div>
<script>
    window.onload=function () {
        var nav=document.getElementById('menu');
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

                oDiv[this.index].style.display="block"


            }
            for(var m=1;m<oNav.length;m++){
                oNav[m].className='';
                oDiv[m].style.display="none";


            }
        }



    };

</script>

</body>
</html>