<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>运动会报名</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <%User user = (User)request.getSession().getAttribute("user");%>
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
                <li class="active">
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
                <li >
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
                    <a class="navbar-brand" href="#">运动会报名</a>
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
                <div class="card card-map">
                    <div class="header">
                        <h4 class="title">报名</h4>
                    </div>
                    <div class="map">
                        <div id="map">
                            <table class="table table-bordered" id="sign">
                                <tr>
                                    <th>序号</th>
                                    <th>参赛项目</th>
                                    <th>参赛时间</th>
                                    <th>参赛地点</th>
                                    <th>参赛情况</th>
                                    <th>参赛</th>
                                    <th>退赛</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>女子100米</td>
                                    <td>2020年11月2日上午8:20</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <!--<button type="button" class="btn btn-info">报名</button>-->
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <!--<button type="button" class="btn btn-default">退赛</button>-->
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>男子100米</td>
                                    <td>2020年11月2日上午8:50</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>女子200米</td>
                                    <td>2020年11月2日下午14:30</td>
                                    <td>田径场</td>
                                    <td>已参赛</td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>男子200米</td>
                                    <td>2020年11月2日上午8:30</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>女子400米</td>
                                    <td>2020年11月2日上午9:10</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>男子400米</td>
                                    <td>2020年11月2日上午9:50</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>女子800米</td>
                                    <td>2020年11月2日下午15:25</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>男子1500米</td>
                                    <td>2020年11月2日下午15:50</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>女子4*100米</td>
                                    <td>2020年11月2日上午11:00</td>
                                    <td>田径场</td>
                                    <td>已参赛</td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>男子4*100米</td>
                                    <td>2020年11月2日上午11:30</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>男子垒球</td>
                                    <td>2020年11月2日上午8:35</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>女子垒球</td>
                                    <td>2020年11月2日下午14:45</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>女子跳高</td>
                                    <td>2020年11月2日上午8:35</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>男子跳高</td>
                                    <td>2020年11月2日下午14:45</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>女子铅球</td>
                                    <td>2020年11月2日上午9:35</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>男子铅球</td>
                                    <td>2020年11月2日下午15:25</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td>男子跳远</td>
                                    <td>2020年11月2日上午9:35</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>女子跳远</td>
                                    <td>2020年11月2日下午15:25</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>男子后抛实心球</td>
                                    <td>2020年11月2日上午10:35</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>女子后抛实心球</td>
                                    <td>2020年11月2日下午16:20</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>女子三级跳</td>
                                    <td>2020年11月2日上午10:35</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>男子三级跳</td>
                                    <td>2020年11月2日下午16:20</td>
                                    <td>田径场</td>
                                    <td></td>
                                    <td>
                                        <input type="button" id="" value="报名" />
                                    </td>
                                    <td>
                                        <input type="button" id="" value="退赛" />
                                    </td>
                                </tr>
                            </table>
                            <nav aria-label="Page navigation" id="map_nav">
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
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
<script>
    $().ready(function(){
        demo.initGoogleMaps();
    });
</script>
</html>