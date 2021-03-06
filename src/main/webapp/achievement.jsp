<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <%User user = (User)request.getSession().getAttribute("user");%>
    <title>查看运动会成绩</title>

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
                <li class="active">
                    <a href="achievement.jsp">
                        <i class="ti-map"></i>
                        <p>查看运动会成绩</p>
                    </a>
                </li>
                <li>
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
                                <h4 class="title">运动会赛事成绩</h4>
                                <p class="category">第三十四届运动会 </p>
                                <div class="content table-responsive table-full-width">
                                    <table class="table table-hover">
                                        <thead>
                                        <th>序号</th>
                                        <th>比赛项目</th>
                                        <th>参赛人</th>
                                        <th>参赛代表队</th>
                                        <th>成绩</th>
                                        <th>名次</th>
                                        <th>操作</th>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Dakota Rice</td>
                                            <td>$36,738</td>
                                            <td>Niger</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Minerva Hooper</td>
                                            <td>$23,789</td>
                                            <td>Curaçao</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Sinaai-Waas</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Sage Rodriguez</td>
                                            <td>$56,142</td>
                                            <td>Netherlands</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Baileux</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Philip Chaney</td>
                                            <td>$38,735</td>
                                            <td>Korea, South</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Overland Park</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Doris Greene</td>
                                            <td>$63,542</td>
                                            <td>Malawi</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Feldkirchen in Kärnten</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Mason Porter</td>
                                            <td>$78,615</td>
                                            <td>Chile</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Oud-Turnhout</td>
                                            <td>Gloucester</td>
                                        </tr>
                                        </tbody>
                                    </table>

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

<!--   Core JS Files   -->
<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootstrap-checkbox-radio.js"></script>
<script src="js/chartist.min.js"></script>
<script src="js/bootstrap-notify.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
<script src="js/paper-dashboard.js"></script>
</html>
