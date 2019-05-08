<%--
  Created by IntelliJ IDEA.
  User: wangmiao
  Date: 2019/5/5
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>老师登录界面</title>
</head>
<body>
<div class="whole">
    <div class="top">
        <h1>大风车幼儿园欢迎您</h1>
    </div>
    <div class="main">
        <div id="menu">
            <ul>
                <li><a href="index.jsp" >首页</a></li>
                <li><a href="UpdatePassword.jsp" >修改密码</a></li>
                <li><a href="html/menuThree.html" target="menu2">查看信息</a>
                    <div class="two">
                        <ul>
                            <li><a href="html/teacherInformation.html">老师信息</a></li>
                            <li><a href="#" >学校通知</a></li>
                            <li><a href="#" >上下车记录</a></li>
                            <li><a href="#">实时定位</a></li>
                            <li><a href="https://www.ucloudcam.cn/">监控视频</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div id="two">
            <iframe style="width:100%;height:100%;border:0px;" name="menu2"></iframe>
        </div>

        <div id="one">
            <iframe style="width:100%;height:100%;" name="frame1"></iframe>
        </div>
    </div>
</div>
</body>
</html>
