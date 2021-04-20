<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文章分类 </title>
    <meta name="Copyright" content="Douco Design." />
    <link href="../css/backstage.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
    <script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../js/global.js"></script>
</head>
<body>
<div id="dcWrap">
    <div id="dcHead">
        <div id="head">
            <div class="logo">
                <a href="index.html" class="logosystem">运动会信息管理系统</a>
            </div>
            <div class="nav">
                <ul class="navRight">
                    <li class="M noLeft">
                        <a href="JavaScript:void(0);">您好，admin</a>
                        <div class="drop mUser">
                            <a href="manager.php?rec=edit&id=1">编辑我的个人资料</a>
                        </div>
                    </li>
                    <li class="noRight">
                        <a href="../index.html">退出</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="dcLeft">
        <div id="menu">
            <ul class="top">
                <li><a href="backindex.jsp"><i class="home"></i><em>管理首页</em></a></li>
            </ul>
            <ul>
                <li><a href="setproject.jsp"><i class="product"></i><em>管理比赛项目</em></a></li>
                <li  class="cur"><a href="arrangement.jsp"><i class="nav"></i><em>比赛日程安排</em></a></li>
                <li><a href="grouping.jsp"><i class="show"></i><em>比赛分组编道</em></a></li>
                <li><a href="player.jsp"><i class="page"></i><em>运动员信息管理</em></a></li>
                <li><a href="page.html"><i class="page"></i><em>裁判人员信息管理</em></a></li>
            </ul>
            <ul class="bot">
                <li><a href="backup.html"><i class="backup"></i><em>比赛成绩录入</em></a></li>
                <li><a href="scoreranking.jsp"><i class="mobile"></i><em>比赛成绩排名</em></a></li>
                <li><a href="teampoints.jsp"><i class="theme"></i><em>代表队积分排名</em></a></li>
                <li><a href="highestscore.jsp"><i class="manager"></i><em>更新最高纪录</em></a></li>
            </ul>
            <ul>
                <li><a href="article_category.html"><i class="articleCat"></i><em>发布公告信息</em></a></li>
                <li><a href="article.html"><i class="article"></i><em>发布新闻信息</em></a></li>
            </ul>
        </div>
    </div>
    <div id="dcMain">
        <div id="urHere">您当前的位置:<b>></b><strong>代表队积分排名</strong></div>
        <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
            <h3>代表队积分</h3>
            <div >
                <table class="table table-bordered">
                    <tr>
                        <th colspan="9">男子100米</th>
                    </tr>
                    <tr>
                        <td>名次</td>
                        <td>第一名</td>
                        <td>第二名</td>
                        <td>第三名</td>
                        <td>第四名</td>
                        <td>第五名</td>
                        <td>第六名</td>
                        <td>第七名</td>
                        <td>第八名</td>

                    </tr>
                    <tr>
                        <td>姓名</td>
                        <td>吴世勋</td>
                        <td>鹿晗</td>
                        <td>朴灿烈</td>
                        <td>张艺兴</td>
                        <td>边伯贤</td>
                        <td>吴亦凡</td>
                        <td>都暻秀</td>
                        <td>黄子韬</td>
                    </tr>
                    <tr>
                        <td>成绩</td>
                        <td>11.21</td>
                        <td>11.33</td>
                        <td>11.44</td>
                        <td>11.46</td>
                        <td>11.50</td>
                        <td>11.55</td>
                        <td>11.56</td>
                        <td>12.00</td>
                    </tr>
                    <tr>
                        <td>学院</td>
                        <td>启迪数字学院</td>
                        <td>土建学院</td>
                        <td>土建学院</td>
                        <td>管理学院</td>
                        <td>启迪数字学院</td>
                        <td>电气学院</td>
                        <td>机械学院</td>
                        <td>土建学院</td>
                    </tr>
                    <tr>
                        <th colspan="9">女子100米</th>
                    </tr>
                    <tr>
                        <td>名次</td>
                        <td>第一名</td>
                        <td>第二名</td>
                        <td>第三名</td>
                        <td>第四名</td>
                        <td>第五名</td>
                        <td>第六名</td>
                        <td>第七名</td>
                        <td>第八名</td>

                    </tr>
                    <tr>
                        <td>姓名</td>
                        <td>赵丽颖</td>
                        <td>关晓彤</td>
                        <td>杨紫</td>
                        <td>张子枫</td>
                        <td>谭松韵</td>
                        <td>宋轶</td>
                        <td>刘诗诗</td>
                        <td>杨幂</td>
                    </tr>
                    <tr>
                        <td>成绩</td>
                        <td>12.06</td>
                        <td>12.10</td>
                        <td>12.20</td>
                        <td>12.25</td>
                        <td>12.35</td>
                        <td>12.45</td>
                        <td>13.00</td>
                        <td>13.07</td>
                    </tr>
                    <tr>
                        <td>学院</td>
                        <td>启迪数字学院</td>
                        <td>土建学院</td>
                        <td>土建学院</td>
                        <td>管理学院</td>
                        <td>启迪数字学院</td>
                        <td>电气学院</td>
                        <td>机械学院</td>
                        <td>土建学院</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</body>
</html>