<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.SelfInfo"%>
<%@ page import="Dao.SelfInfoDao"%>
<%@ page import="domain.Eduex"%>
<%@ page import="domain.Workex"%>
<%@ page import="domain.Emoex"%>
<%@ page import="domain.Appo"%>
<%@ page import="Dao.AppoDao"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>相见，从相见开始相恋</title>
    <link rel="stylesheet" href="css/ReallyHomePage.css">
    <link rel="icon" href="pic/tu.png"/>
    <link href="css/index2.css" rel="stylesheet" type="text/css">
    <style>
     .container {
        position: relative;
        width:1000px;
        height:700px;
        margin:0px auto;
    }
    .img1 {
        position: absolute;
        top:50px;
        left:100px;
        cursor: pointer;
        padding:10px 10px 25px;
        background-color: #fff;
        border:1px solid #ddd;
        transition:0.5s;
        box-shadow: 3px 3px 3px #ccc;
    }
    .img2 {
        position: absolute;
        top:50px;
        left:100px;
        cursor: pointer;
        padding:10px 10px 25px;
        background-color: #fff;
        border:1px solid #ddd;
        transition:0.5s;
        box-shadow: 3px 3px 3px #ccc;
    }
    .img3 {
        position: absolute;
        top:50px;
        left:100px;
        cursor: pointer;
        padding:10px 10px 25px;
        background-color: #fff;
        border:1px solid #ddd;
        transition:0.5s;
        box-shadow: 3px 3px 3px #ccc;
    }
    .img4 {
        position: absolute;
        top:50px;
        left:100px;
        cursor: pointer;
        padding:10px 10px 25px;
        background-color: #fff;
        border:1px solid #ddd;
        transition:0.5s;
        box-shadow: 3px 3px 3px #ccc;
    }
    .img5 {
        position: absolute;
        top:50px;
        left:100px;
        cursor: pointer;
        padding:10px 10px 25px;
        background-color: #fff;
        border:1px solid #ddd;
        transition:0.5s;
        box-shadow: 3px 3px 3px #ccc;
    }
    .img1 { left:40px; top:20px; transform:rotate(30deg); z-index: 1;}
    .img2 { left:156px; top:156px; transform:rotate(-30deg); z-index: 1;}
    .img3 { left:381px; top:60px; transform:rotate(30deg); z-index: 1;}
    .img4 { left:458px; top:256px; transform:rotate(30deg); z-index: 1;}
    .img5 { left:684px; top:110px; transform:rotate(-40deg); z-index: 1;}
    img:hover { transform:rotate(0deg); transform:scale(1.5); box-shadow: 6px 6px 6px #656565; z-index: 2;}

    .center1{
        position: absolute;
        text-decoration: none;
        font-weight: bold;
        font-size: 14px;
        top: 20px;
        right: 25px;
        color: white;
    }  
    </style>
</head>
<body>
        <%
        String Account = (String)session.getAttribute("account");
      /*   String Account= "";
        if(request.getAttribute("account")!=null){
        Account = (String)request.getAttribute("account");
        }else{
        Account = request.getParameter("account");
        } */
        /* 	Eduex eduex = (Eduex )request.getAttribute("eduex");
        Workex workex = (Workex)request.getAttribute("workex");
        Emoex emoex = (Emoex)request.getAttribute("emoex");
        SelfInfo selfInfo = (SelfInfo)request.getAttribute("info"); */
        %>
        <%
        int pager = 0;
        if(request.getParameter("page") != null){
        pager = Integer.valueOf(request.getParameter("page"));
        }
       
        %>

        <%

        AppoDao dao = new AppoDao();
        List<Appo> list = dao.findAll(pager,3);

        %>
<div class="bg">
   <div class="title">
       <p class="t1">相见</p>
       <p class="t2">从相见开始相恋</p>
       <a href="selfinfo.jsp?account=<%=Account %>"class="center"><%=Account %></a>
       <a href="login.jsp" class="center1">退出登录</a> 
   </div>
    <div id="menu">
        <ul id="ulmeanu">
            <li><a>首页</a></li>
            <li><a>发布约会</a></li>
            <li><a>加入约会</a></li>
            <li><a>排行榜</a></li>
            <li><a>约会通知</a></li>

        </ul>

    </div>

    <div id="container">
        <section class="tab">
            <div class="container">
                <img class="img1" src="pic/lun1.jpg" height="150" width="150" alt="">
                <img class="img2" src="pic/lun2.jpg" height="160" width="200" alt="">
                <img class="img3" src="pic/lun3.jpg" height="170" width="200" alt="">
                <img class="img4" src="pic/lun4.jpg" height="240" width="200" alt="">
                <img class="img5" src="pic/lun5.jpg" height="300" width="220" alt="">
            </div>
        </section>
        <section class="tab">
            <form action="/Training/AppoServlet?account=<%=Account %>" method="post">
            <div class="send_bg">

                    <p style="font-size: 22px;font-family: 幼圆 ; margin-left: 200px ;margin-top: 20px"><b>发布约会</b></p><br>
                    <div class="main_title">
                        <p style="font-size: 16px;font-family: 幼圆 ;"><b>主题</b></p>
                        <img style="margin-left: 60px ;margin-top: -15px" src="pic/movie.jpg"  width="42px" height="42px" >
                        <img style="margin-left: 30px ;margin-top: -15px" src="pic/dinner.jpg"  width="42px" height="42px" >
                        <img style="margin-left: 30px ;margin-top: -15px" src="pic/sing.png"  width="42px" height="42px" >
                        <img style="margin-left: 30px ;margin-top: -15px" src="pic/coffee.jpg"  width="42px" height="42px" >
                        <img style="margin-left: 30px ;margin-top: -15px" src="pic/travel.jpg"  width="42px" height="42px" >
                        <img style="margin-left: 30px ;margin-top: -15px" src="pic/shopping.jpg"  width="42px" height="42px" >
                        <img style="margin-left: 30px ;margin-top: -15px" src="pic/other.jpg"  width="42px" height="42px" >
                    </div>
                    <div class="main_title_name">
                        <input type="checkbox" checked="checked" name="theme" value="看电影" style="margin-left: 45px;color: #66AFE9">看电影</input>
                        <input type="checkbox" name="theme" value="吃饭" style="margin-left: 25px;color: #66AFE9">吃饭</input>
                        <input type="checkbox" name="theme" value="K歌" style="margin-left: 25px;color: #66AFE9">K歌</input>
                        <input type="checkbox" name="theme" value="喝咖啡" style="margin-left: 25px;color: #66AFE9">喝咖啡</input>
                        <input type="checkbox" name="theme" value="旅行" style="margin-left: 25px;color: #66AFE9">旅行</input>
                        <input type="checkbox" name="theme" value="购物" style="margin-left: 25px;color: #66AFE9">购物</input>
                        <input type="checkbox" name="theme" value="其他" style="margin-left: 25px;color: #66AFE9">其他</input>
                    </div>
                    <div class="fee">
                        <p style="font-size: 16px;font-family: 幼圆 ;"><b>费用</b>
                        <input type="radio" checked=checked name="free" value="male "style="margin-left: 45px;color: #66AFE9">我买单
                        <input type="radio" name="free" value="female"style="margin-left: 25px;color: #66AFE9 ;margin-top: -30px">AA</p>

                    </div>
                    <div class="date_time">
                        <p style="font-size: 16px;font-family: 幼圆 ;"><b>时间</b>
                        <input style=" margin-left: 45px; width: 300px;height: 20px" type="text" name="time" placeholder="详细时间"><br></p>
                    </div>
                    <div class="place">
                        <p style="font-size: 16px;font-family: 幼圆 ;"><b>地点</b>
                        <input style=" margin-left: 45px; width: 300px;height: 20px" type="text" name="site" placeholder="详细地点"><br></p>
                    </div>
                    <textarea cols="80" rows="50" placeholder="约会信息详细描述" class="mytextarea" id="content" name="descr"></textarea>

                    <button class="fill">发布约会</button>

</div>
            </form>
        </section>
        <section class="tab">
            <div class="box">
                <form class="box">
                    <dl class="dl">
                        <dd class="yh">
                            <img class="tx" src="pic/wall1.jpg">
                            <div class="gr">
                                <dl class="xq">
                                    <dd><%=list.get(0).getAccount()%></dd>
                                    <dd><%=list.get(0).getTheme() %></dd>
                                    <dd><%=list.get(0).getTime() %></dd>
                                </dl>

                                <dl class="yj">
                                    <dd class="mj"><%= list.get(0).getDescr() %>
                                    <dd><a href="selfinfo.jsp?Account=<%=list.get(0).getAccount()%>&account=<%=Account %>">我要应约</a></dd>
                                </dl>
                            </div>
                        </dd>

                        <dd class="yh">
                            <img class="tx" src="pic/wall2.jpg">
                            <div class="gr">
                                <dl class="  xq">
                                    <dd><%=list.get(1).getAccount()%></dd>
                                    <dd><%=list.get(1).getTheme() %></dd>
                                    <dd><%=list.get(1).getTime() %></dd>
                                </dl>

                               
                                <dl class="yj">
                                    <dd class="mj"><%= list.get(1).getDescr() %>
                                    <dd><a href="selfinfo.jsp?Account=<%=list.get(1).getAccount()%>&account=<%=Account %>">我要应约</a></dd>
                                </dl>
                            </div>
                        </dd>
                        <dd class="yh">
                            <img class="tx" src="pic/wall3.jpg">
                            <div class="gr">
                                <dl class="  xq">
                                    <dd><%=list.get(2).getAccount()%></dd>
                                    <dd><%=list.get(2).getTheme() %></dd>
                                    <dd><%=list.get(2).getTime() %></dd>
                                </dl>

                                <dl class="yj">
                                    <dd class="mj"><%= list.get(2).getDescr() %>
                                    <dd><a href="selfinfo.jsp?Account=<%=list.get(2).getAccount()%>&account=<%=Account %>">我要应约</a></dd>
                                </dl>
                            </div>                                                                                                 
                        </dd>
                    </dl>
                    <div class="hader">
                        <a class="sy" href="ReallyHomePage.jsp?page=0&account=<%=Account %>">首页</a>
                        <a href="ReallyHomePage.jsp?page=3&account=<%=Account %>" style="margin-right:2px;">2</a>
                        <a href="ReallyHomePage.jsp?page=6&account=<%=Account %>" style="margin-right:2px;">3</a>
                        <a href="ReallyHomePage.jsp?page=9&account=<%=Account %>" style="margin-right:2px;">4</a>
                        <a href="ReallyHomePage.jsp?page=12&account=<%=Account %>" style="margin-right:2px;">5</a>
                        <a href="ReallyHomePage.jsp?page=15&account=<%=Account %>" style="margin-right:2px;">6</a>
                        <a href="ReallyHomePage.jsp?page=18&account=<%=Account %>" style="margin-right:2px;">末页</a>
                    </div>
                </form>

            </div>


        </section>
        <section class="tab">

            <div class="tab-panel">
                <div class="tab-panel-item tab-active">

                    <a href="#" class="aui-flex b-line">
                        <div class="img">
                            <img src="pic/wall1.jpg" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h2>宝宝</h2>
                            <h3>高尔夫 电影院 吃饭 送我回家。</h3>
                            <p>12月16日</p>
                        </div>
                        <div class="aui-flex-top">
                            <h2>1</h2>
                        </div>
                    </a>

                    <a href="#" class="aui-flex b-line">
                        <div class="img">
                            <img src="pic/wall2.jpg" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h2>流年如水</h2>
                            <h3>晚点遇到你 余生都是你</h3>
                            <p>12月16日</p>
                        </div>
                        <div class="aui-flex-top aui-flex-top-two">
                            <h2>2</h2>
                        </div>
                    </a>

                    <a href="#" class="aui-flex b-line">
                        <div class="img">
                            <img src="pic/wall3.jpg" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h2>沉淀勿浮华</h2>
                            <h3>快乐享福珍惜呵护体贴你，我各项特长天赋优秀。稳踏实浪漫亲交往恋爱选我对的</h3>
                            <p>12月16日</p>
                        </div>
                        <div class="aui-flex-top aui-flex-top-three">
                            <h2>3</h2>
                        </div>
                    </a>

                    <a href="#" class="aui-flex b-line">
                        <div class="img">
                            <img src="pic/wall1.jpg" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h2>梦中的秋千</h2>
                            <h3>相约爱情 相守缘分 遇到知己</h3>
                            <p>12月16日</p>
                        </div>
                        <div class="aui-flex-top aui-flex-top-four">
                            <h2>4</h2>
                        </div>
                    </a>

                    <a href="#" class="aui-flex b-line">
                        <div class="img">
                            <img src="pic/wall2.jpg" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h2>寒笑凌烟</h2>
                            <h3>新手上路，希望各位多关照关照一下。希望通过这里找到属于自己的知己，
                                只要喜欢沟通的都可以来沟通一下哦</h3>
                            <p>12月16日</p>
                        </div>
                        <div class="aui-flex-top aui-flex-top-four">
                            <h2>5</h2>
                        </div>
                    </a>

                </div>
            </div>
        </section>
        <section class="tab">5</section>
		

    </div>
</div>


<div class="qiqiu1 qiqiu">
    <img src="pic/q5.png">
    <div class="text">love</div>
</div>
<div class="qiqiu2 qiqiu">
    <img src="pic/q1.png">
    <div class="text">love</div>
</div>
<div class="qiqiu3 qiqiu">
    <img src="pic/q2.png">
    <div class="text">love</div>
</div>
<div class="qiqiu4 qiqiu">
    <img src="pic/q3.png">
    <div class="text">love</div>
</div>
<div class="qiqiu5 qiqiu">
    <img src="pic/q4.png">
    <div class="text">love</div>
</div>
<div class="qiqiu5 qiqiu">
    <img src="pic/q5.png">
    <div class="text">love</div>
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