<%--
  Created by IntelliJ IDEA.
  User: hu.taoquan
  Date: 2021/3/20
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="logo span4">
                <h1><a href="">运动会信息管理系统</a></h1>
            </div>
            <div class="links span8">
                <a class="home" href="" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                <a class="blog" href="" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
            </div>
        </div>
    </div>
</div>
<div class="register-container container">
    <div class="row">
        <div class="iphone span5">
            <!--<img src="img/iphone.png" alt="">-->
        </div>
        <div class="register span6">
            <form action="" method="post">
                <h2>REGISTER</h2>
                <label for="style_college">学院<span style="color: red;font-size: 25px;">*</span></label>
                <select id="style_college" class="college"></select>
                <label for="style_classes">班级<span style="color: red;font-size: 25px;">*</span></label>
                <select id="style_classes" class="classes"></select>
                <label for="style_jobNumber">工号<span style="color: red;font-size: 25px;">*</span></label>
                <input type="text" id="style_jobNumber" class="jobNumber" placeholder="请输入学号或教师号">
                <label for="style_username">姓名<span style="color: red;font-size: 25px;">*</span></label>
                <input type="text" id="style_username" class="username" placeholder="请输入姓名">
                <label for="style_email">邮箱<span style="color: red;font-size: 25px;">*</span></label>
                <input type="text" id="style_email" class="email" placeholder="请输入常用邮箱">
                <label for="style_password">密码<span style="color: red;font-size: 25px;">*</span></label>
                <input type="password" id="style_password"  class="password" placeholder="请输入密码">
                <label for="style_phone">电话<span style="color: red;font-size: 25px;">*</span></label>
                <input type="text" id="style_phone" class="telephone" placeholder="请输入常用电话">
                <label for="style_sex">性别<span style="color: red;font-size: 25px;">*</span></label>
                <input type="text" id="style_sex" class="sex" placeholder="请输入性别 例：女">
                <label for="style_age">年龄</label>
                <input type="text" id="style_age" class="age" placeholder="请输入年龄 例：20">
                <label for="style_height">身高</label>
                <input type="text" id="style_height" class="height" placeholder="请输入身高单位为cm 例：160cm">
                <label for="style_weight">体重</label>
                <input type="text" id="style_weight" class="weight"  placeholder="请输入体重单位为kg 例：50kg">

                <button type="button" class="confirm">提交</button>
            </form>
        </div>
    </div>
</div>
<!-- Javascript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.backstretch.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/js/register.js"></script>--%>
<script src="${pageContext.request.contextPath}/js/register_check.js"></script>

<style>
    .copyrights{
        text-indent:-9999px;
        height:0;
        line-height:0;
        font-size:0;
        overflow:hidden;
    }
</style>
</body>
</html>
