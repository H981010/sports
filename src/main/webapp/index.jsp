<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录/注册页面</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/file/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
</head>
<body>
    <ul style="list-style: none;line-height: 30px;">
        <li>
            <label>
                用户名:
                <input type="text" class="username" autocomplete="on" >
            </label>
        </li>
        <li>
            <label>
                密&nbsp;&nbsp;&nbsp;码:
                <input type="password" class="password" autocomplete="on">
            </label>
        </li>
        <li>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <input class="login" type="button" value="登录" >
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <input class="register" type="button" value="注册" >
        </li>
    </ul>
</body>
</html>
