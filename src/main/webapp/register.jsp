<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>注册页面</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/register.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/register.js"></script>
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
                </div>
                <div class="register span6">
                     <form>
                        <h2>REGISTER</h2>
                        <label for="college">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;学院
                        	<select id="college" name="college" class="sel_col">

	                        </select>
                        </label>
                        <label for="classes">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;班级
                        	<select id="classes" name="classes" class="sel_col">
	                        </select>
                        </label>
                        <label for="jobnumber">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;工号
                        	<input type="text" id="jobNumber" name="jobNumber" placeholder="请输入学号或教师号">
                        </label>
                        <label for="password">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;密码
                        	<input type="password" id="password" name="password" placeholder="请输入密码">
                        </label>
                        <label for="username">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;姓名
                        	<input type="text" id="username" name="username" placeholder="请输入姓名">
                        </label>
                        <label for="email">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;邮箱
                        	<input type="text" id="email" name="email" placeholder="请输入常用邮箱" onblur="checkEmail()">
                        	<span id="emailTips" class="tips"></span>
                        </label>
                        <label for="phone">
                        	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;电话
                        	<input type="text" id="phone" name="phone" placeholder="请输入常用电话">
                        </label>
                        <label for="sex">
                         	<span style="color: red;font-size: 16px;">*</span>&nbsp;&nbsp;性别
                         	<input type="radio" id="boy" name="sex" style="width: 20px;" value="男">&nbsp;&nbsp;男
                         	<input type="radio" id="girl" name="sex" style="width: 20px;" value="女">&nbsp;&nbsp;女
                        </label>
                        <label for="age">&nbsp;&nbsp;&nbsp;年龄
                        	<input type="text" id="age" name="age" placeholder="请输入年龄 例：20">
                        	<span id="sex" class="tips"></span>
                        </label>
                        <label for="height">&nbsp;&nbsp;&nbsp;身高
                        	<input type="text" id="height" name="height" placeholder="请输入身高单位为cm 例：160cm">
                        </label>
                        <label for="weight">&nbsp;&nbsp;&nbsp;体重
                        	 <input type="text" id="weight" name="weight" placeholder="请输入体重单位为kg 例：50kg">
                        </label>
                        <button type="button" class="confirm">提交</button>
                    </form>
                </div>
            </div>
        </div>

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

