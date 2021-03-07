<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/file/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
</head>
<body>
    <table class="table table-hover">
        <tbody>
        <tr>
            <td>用户名</td>
            <td><input type="text" class="username" autocomplete="on"></td>
        </tr>
        <tr>
            <td>工号</td>
            <td><input type="text" class="jobNumber" autocomplete="on"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" class="password" autocomplete="on"></td>
        </tr>
        <tr>
            <td>学院</td>
            <td>
                <select class="college"></select>
            </td>
        </tr>
        <tr>
            <td>班级</td>
            <td>
                <select class="classes"></select>
            </td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="email" class="email" autocomplete="on"></td>
        </tr>
        <tr>
            <td>电话</td>
            <td><input type="text" class="telephone" autocomplete="on"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" class="sex" autocomplete="on"></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" class="age" autocomplete="on"></td>
        </tr>
        <tr>
            <td>身高</td>
            <td><input type="text" class="height" autocomplete="on"></td>
        </tr>
        <tr>
            <td>体重</td>
            <td><input type="text" class="weight" autocomplete="on"></td>
        </tr>
        <tr>
            <td>爱好</td>
            <td><input type="text" class="hobby" autocomplete="on"></td>
        </tr>
        <tr>
            <td><input type="button" class="confirm" value="确认"></td>
            <td><input type="reset"  value="重置"></td>
        </tr>
        </tbody>
    </table>
</body>
</html>
