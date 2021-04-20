<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>分组编道 </title>
    <meta name="Copyright" content="Douco Design." />
    <link href="../css/backstage.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
    <script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../js/global.js"></script>
    <script type="text/javascript" src="../js/jquery.tab.js"></script>
</head>
<body>
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
    <div id="urHere">您当前的位置:<b>></b><strong>比赛分组编道</strong></div>
    <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
        <h3>分组编道</h3>
        <script type="text/javascript">
            $(function(){ $(".idTabs").idTabs(); });
        </script>
        <div class="idTabs">
            <div class="items">
                <form action="system.php?rec=update" method="post" enctype="multipart/form-data">
                    <div id="main" class="field">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th colspan="7">女子100米预赛 </th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>第一道</td>
                                    <td>第二道</td>
                                    <td>第三道</td>
                                    <td>第四道</td>
                                    <td>第五道</td>
                                    <td>第六道</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">第1组</td>
                                    <td>鹿晗</td>
                                    <td>吴亦凡</td>
                                    <td>张艺兴</td>
                                    <td>黄子韬</td>
                                    <td>吴世勋</td>
                                    <td>朴灿烈</td>
                                </tr>
                                <tr>
                                    <td>启迪数字学院</td>
                                    <td>机械学院</td>
                                    <td>艺术学院</td>
                                    <td>财经学院</td>
                                    <td>土建学院</td>
                                    <td>电气学院</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">第2组</td>
                                    <td>边伯贤</td>
                                    <td>都暻秀</td>
                                    <td>金俊勉</td>
                                    <td>金钟仁</td>
                                    <td>金珉锡</td>
                                    <td>金钟大</td>
                                </tr>
                                <tr>
                                    <td>计通学院</td>
                                    <td>管理学院</td>
                                    <td>汽车学院</td>
                                    <td>鹿山学院</td>
                                    <td>职教学院</td>
                                    <td>社科学院</td>
                                </tr>

                                <tr>
                                    <th colspan="7">男子100米预赛 </th>

                                </tr>
                                <tr>
                                    <td></td>
                                    <td>第一道</td>
                                    <td>第二道</td>
                                    <td>第三道</td>
                                    <td>第四道</td>
                                    <td>第五道</td>
                                    <td>第六道</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">第1组</td>
                                    <td>鹿晗</td>
                                    <td>吴亦凡</td>
                                    <td>张艺兴</td>
                                    <td>黄子韬</td>
                                    <td>吴世勋</td>
                                    <td>朴灿烈</td>
                                </tr>
                                <tr>
                                    <td>启迪数字学院</td>
                                    <td>机械学院</td>
                                    <td>艺术学院</td>
                                    <td>财经学院</td>
                                    <td>土建学院</td>
                                    <td>电气学院</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">第2组</td>
                                    <td>边伯贤</td>
                                    <td>都暻秀</td>
                                    <td>金俊勉</td>
                                    <td>金钟仁</td>
                                    <td>金珉锡</td>
                                    <td>金钟大</td>
                                </tr>
                                <tr>
                                    <td>计通学院</td>
                                    <td>管理学院</td>
                                    <td>汽车学院</td>
                                    <td>鹿山学院</td>
                                    <td>职教学院</td>
                                    <td>社科学院</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
