<%--
  Created by IntelliJ IDEA.
  User: wangmiao
  Date: 2019/5/3
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link type="text/css" rel="stylesheet" href="css/loginStyle.css">
</head>
<body>
    <div class="wrap">
        <div class="w-login">
            <div class="login">
                <form action="">
                    <input type="text" class="text" placeholder="账号" />
                    <br/>
                    <input type="password" class="text text-1" placeholder="密码"/>
                    <p>
                        <input type="checkbox" id="check"/>
                        <label for="check">记住账号</label>
                        <a href="#">忘记密码</a>
                    </p>
                    <input type="submit" class="btn" value="登       录"/>
                </form>
                <div class="w-bottom">
                    合作网站账号登录：
                    <a href="#">QQ</a><img src="image/qqLogo4.jpg" >
                    <a href="#">微信</a><img src="image/weixinLogo4.jpg" >
                </div>
            </div>
        </div>
    </div>
</body>
</html>
