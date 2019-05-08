<%--
  Created by IntelliJ IDEA.
  User: wangmiao
  Date: 2019/4/25
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<script>
    //跑动的次数
    var count = 0;
    //动画的执行方向
    var isgo = false;
    //定义计时器对象
    var timer;

    window.onload = function () {
        /*获取ul元素*/
        var ul_img = document.getElementsByClassName("ul_img")[0];
        //获取所有的li图片元素
        var li_img = document.getElementsByClassName("li_img");
        //获取控制方向的箭头元素
        var arrow = document.getElementsByClassName("arrow");
        //获取所有按钮元素
        var div_btn = document.getElementsByClassName("div_btn");
        div_btn[0].style.backgroundColor = "aqua";


        /*定义计时器，控制图片移动*/
        showtime();
        function showtime() {
            timer = setInterval(function () {
                if (isgo == false) {
                    count++;
                    ul_img.style.transform = "translate(" + -800 * count + "px)";
                    if (count >= li_img.length - 1) {
                        count = li_img.length - 1;
                        isgo = true;
                    }
                }
                else {
                    count--;
                    ul_img.style.transform = "translate(" + -800 * count + "px)";
                    if (count <= 0) {
                        count = 0;
                        isgo = false;
                    }
                }

                for (var i = 0; i < div_btn.length; i++) {
                    div_btn[i].style.backgroundColor = "aquamarine";
                }

                div_btn[count].style.backgroundColor = "aqua";

            }, 4000)
        }

        /*鼠标进入左右方向键操作*/
        for (var i = 0; i < arrow.length; i++) {
            //鼠标悬停时
            arrow[i].onmouseover = function () {
                //停止计时器
                clearInterval(timer);
            }
            //鼠标离开时
            arrow[i].onmouseout = function () {
                //添加计时器
                showtime();
            }
            arrow[i].onclick = function () {
                //区分左右
                if (this.title == 0) {
                    count++;
                    if (count > 3) {
                        count = 0;
                    }
                }
                else {
                    count--;
                    if (count < 0) {
                        count = 3;
                    }
                }

                ul_img.style.transform = "translate(" + -800 * count + "px)";

                for (var i = 0; i < div_btn.length; i++) {
                    div_btn[i].style.backgroundColor = "aquamarine";
                }
                div_btn[count].style.backgroundColor = "aqua";
            }
        }

        //鼠标悬停在底部按钮的操作
        for (var b = 0; b < div_btn.length; b++) {
            div_btn[b].index = b;
            div_btn[b].onmouseover = function () {

                clearInterval(timer);

                for (var a = 0; a < div_btn.length; a++) {
                    div_btn[a].style.backgroundColor = "aquamarine";
                }
                div_btn[this.index].style.backgroundColor = "aqua";
                //让count值对应
                //为了控制方向
                if (this.index == 3) {
                    isgo = true;
                }
                if (this.index == 0) {
                    isgo = false;
                }
                count = this.index;
                ul_img.style.transform = "translate(" + -800 * this.index + "px)";
            }
            div_btn[b].onmouseout = function () {
                //添加计时器
                showtime();
            }
        }
    }
</script>
<div class="header_container">
  <ul>
    <li><a href="index.jsp" style="color: #FFFFFF" >首页</a></li>
    <li><a href="html/News.html" style="color: #FFFFFF">学校通知</a></li>
      <li><a style="color: #FFFFFF">环境设施</a></li>
    <li><a href="loginnew.jsp" style="color: #FFFFFF">登录</a></li>
    <li><a href="Parents.jsp" style="color: #FFFFFF">家长</a></li>
      <li><a href="html/teacher.html" style="color: #FFFFFF">老师</a></li>
      <li><a href="administrator.jsp" style="color: #FFFFFF">管理员</a></li>

  </ul>
</div>
<div class="main">
      <div class="left">
          <h1 style="color: #FFFFFF">学校简介</h1>
          <h3 style="color: #FFFFFF">  大风车幼儿园是一家国内连锁的幼儿园，在国内拥有百家连锁店。
              分布在全国一二线乃至三线城市内，广受学生家长的喜爱。
                大风车幼儿园按照国内幼儿教育示范园标准配备全套高品质设施设备及软件建设，
              在英语、艺术、运动等方面独具特色，
              是国家重点科研课题 “ 中国儿童大美育 ” 实验基地。
              大风车幼儿园拥有一批教学经验丰富的专业幼儿教师，
              一定能为您的宝宝的健康成长打下扎实的基础。
          </h3>
      </div>
      <div class="main_div">
          <%--这是轮播图上面左右移动的按钮--%>
        <div class="arrows">
          <span title="1" class="arrow"><</span>
          <span title="0" class="arrow" style="float: right">></span>
        </div>
        <ul class="ul_img">
          <li class="li_img"><img src="image/first1.jpg"></li>
          <li class="li_img"><img src="image/second1.jpg"></li>
          <li class="li_img"><img src="image/three1.jpg"></li>
          <li class="li_img"><img src="image/third1.jpg"></li>
        </ul>
      </div>
          <%--这个其实是轮播图下面的那个移动时候的标识。--%>
          <div style="margin-left: 600px">
              <div class="div_btn"></div>
              <div class="div_btn"></div>
              <div class="div_btn"></div>
              <div class="div_btn"></div>
          </div>
    <%--少了这里轮播图就动不了了--%>
</div>

</body>
</html>
