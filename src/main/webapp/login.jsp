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
                background: url(img/login_01.jpg) ;
                background-size:100% 100% ;
                background-attachment: fixed;
                overflow:hidden;
                }
            canvas{
                z-index:-1;
                position:absolute;
                }
        </style>
        <script src="js/jquery.js"></script>
        <script src="js/login.js"></script>
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
             <dd>
                <div class="power_icon">
                    <label><input type="radio" name="power_radio" value="0">管理员</label>
                    <label><input type="radio" name="power_radio" value="1">学生</label>
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
