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
            <div class="page">
                <!--<select name="collegeList" style="border: 0;">
                    <option value="">启迪数字学院</option>
                    <option value="">土建学院</option>
                    <option value="">电气学院</option>
                    <option value="">管理学院</option>
                    <option value="">机械学院</option>
                </select>-->
                <!--<select name="classList" style="border: 0;">
                    <option value="">软件Q171班</option>
                    <option value="">软件Q172班</option>
                    <option value="">软件Q173班</option>
                    <option value="">软件Q174班</option>
                    <option value="">软件Q175班</option>
                </select>-->
            </div>
            <div >
                <table class="table table-bordered">
                    <tr>
                        <th>学院</th>
                        <!--<th>班级</th>-->
                        <th>性别</th>
                        <th>100米</th>
                        <th>200米</th>
                        <th>400米</th>
                        <th>800米</th>
                        <th>1500米</th>
                        <th>4*100米</th>
                        <th>跳远</th>
                        <th>跳高</th>
                        <th>三级跳</th>
                        <th>后抛实心球</th>
                        <th>垒球</th>
                        <th>铅球</th>
                        <th>积分</th>
                    </tr>
                    <tr>
                        <td rowspan="2">启迪数字学院</td>
                        <!--<td rowspan="2">软甲Q171班</td>-->
                        <td>女</td>
                        <td>4</td>
                        <td>3</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>1</td>
                        <td></td>
                        <td></td>
                        <td>6</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>14</td>
                    </tr>
                    <tr>
                        <!--<td>Data</td>
                        <td>Data</td>-->
                        <td>男</td>
                        <td></td>
                        <td>8</td>
                        <td></td>
                        <td></td>
                        <td>3</td>
                        <td></td>
                        <td>1</td>
                        <td></td>
                        <td></td>
                        <td>5</td>
                        <td>3</td>
                        <td></td>
                        <td>20</td>
                    </tr>

                    <tr>
                        <td rowspan="2">土建学院</td>
                        <!--<td rowspan="2">软甲Q171班</td>-->
                        <td>女</td>
                        <td></td>
                        <td>5</td>
                        <td></td>
                        <td></td>
                        <td>2</td>
                        <td></td>
                        <td>4</td>
                        <td></td>
                        <td>8</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>19</td>
                    </tr>
                    <tr>
                        <!--<td>Data</td>
                        <td>Data</td>-->
                        <td>男</td>
                        <td>7</td>
                        <td>3</td>
                        <td></td>
                        <td></td>
                        <td>7</td>
                        <td></td>
                        <td>4</td>
                        <td></td>
                        <td>5</td>
                        <td></td>
                        <td></td>
                        <td>6</td>
                        <td>32</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</body>
</html>