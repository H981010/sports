<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>登录</title>
    <meta name="author" content="DeathGhost" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
    <style>
        body{
            height:100%;
            background: url(${pageContext.request.contextPath}/img/login_01.jpg) ;
            background-size:100% 100% ;
            background-attachment: fixed;
            overflow:hidden;
        }
        canvas{
            z-index:-1;
            position:absolute;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/verificationNumbers.js"></script>
    <script src="${pageContext.request.contextPath}/js/Particleground.js"></script>
    <script src="${pageContext.request.contextPath}/js/login.js"></script>
    <script>
        $(document).ready(function() {
            //验证码
            createCode();
        });
    </script>

</head>
<body>
<dl class="admin_login">
    <dt>
        <strong>运动会信息管理系统</strong>
        <em>Sports Information System</em>
    </dt>
    <dd class="user_icon">
        <input type="text" placeholder="账号" class="login_txtbx" name="username"/>
    </dd>
    <dd class="pwd_icon">
        <input type="password" placeholder="密码" class="login_txtbx" name="password"/>
    </dd>
    <dd class="val_icon">
        <div class="checkcode">
            <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
            <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
        </div>
        <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
    </dd>
    <dd>
        <div class="power_icon">
            <label><input type="radio" name="power_radio">管理员</label>
            <label><input type="radio" name="power_radio">学生</label>
            <label><input type="radio" name="power_radio">游客</label>
        </div>
        <div class="register_icon">
            <span id=""><a href="http://localhost:8080/register.jsp">注册</a></span>
        </div>

    </dd>
    <dd>
        <input type="button" value="立即登录" class="submit_btn"/>
    </dd>
</dl>
</body>
</html>