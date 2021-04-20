<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <%User user = (User)request.getSession().getAttribute("user");%>
    <title>赛事风采</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="css/themify-icons.css" rel="stylesheet">
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">功能导航</a>
            </div>

            <ul class="nav">
                <li>
                    <a href="index.jsp">
                        <i class="ti-panel"></i>
                        <p>系统公告</p>
                    </a>
                </li>
                <li >
                    <a href="personal.jsp">
                        <i class="ti-user"></i>
                        <p>个人信息</p>
                    </a>
                </li>
                <li>
                    <a href="signup.jsp">
                        <i class="ti-pencil-alt"></i>
                        <p>运动会项目报名</p>
                    </a>
                </li>
                <li >
                    <a href="schedule.jsp">
                        <i class="ti-view-list-alt"></i>
                        <p>运动会项目安排</p>
                    </a>
                </li>
                <li>
                    <a href="achievement.jsp">
                        <i class="ti-map"></i>
                        <p>查看运动会成绩</p>
                    </a>
                </li>
                <li class="active">
                    <a href="eventstyle.jsp">
                        <i class="ti-pencil-alt2"></i>
                        <p>赛事风采</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="girlhighestrecord.jsp">
                        <i class="ti-book"></i>
                        <p>运动会最高记录</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">运动会通知</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
<%--                        <li>--%>
<%--                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--                                <i class="ti-panel"></i>--%>
<%--                                <p>进入后台</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <p class="notification">5</p>
                                <p>通知信息</p>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">运动会时间安排 1</a></li>
                                <li><a href="#">运动会规则 2</a></li>
                                <li><a href="#">运动会赛事安排 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>
                        <%if (user.getPower()==0){%>
                        <li>
                            <a href="backstageHTML/backindex.jsp">
                                <i class="ti-panel"></i>
                                <p>进入后台</p>
                            </a>
                        </li>
                        <%}%>
                    </ul>

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">运动会赛事风采</h4>
                                <p class="category">第三十四届运动会</p>
                            </div>
                            <div class="content all-icons">

                                <div class="icon-section">
                                    <h3>Arrows &amp; Direction Icons </h3>
                                </div>
                                <div class="icon-section">
                                    <h3>Web App Icons</h3>
                                </div>
                                <div class="icon-section">
                                    <h3>Control Icons</h3>
                                </div>
                                <div class="icon-section">
                                    <h3>Text Editor</h3>
                                </div>
                                <div class="icon-section">
                                    <h3>Layout Icons</h3>
                                </div>
                                <div class="icon-section">
                                    <h3>Brand Icons</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="#">
                                启迪数字学院
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                软件Q176班
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                杨永琴
                            </a>
                        </li>
                    </ul>
                </nav>

            </div>
        </footer>



    </div>
</div>


</body>
<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootstrap-checkbox-radio.js"></script>
<script src="js/chartist.min.js"></script>
<script src="js/bootstrap-notify.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
<script src="js/paper-dashboard.js"></script>


</html>