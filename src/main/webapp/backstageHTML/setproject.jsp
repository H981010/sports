<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>设置项目 </title>
    <meta name="Copyright" content="Douco Design." />
    <link href="../css/backstage.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
    <script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../js/global.js"></script>
    <script type="text/javascript" src="../js/setproject.js"></script>
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
    <div id="urHere">您当前的位置:<b>></b><strong>设置比赛项目</strong></div>
    <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
        <h3><a href="#" class="actionBtn add">添加比赛项目</a>比赛项目列表</h3>
        <div class="filter">
            <select id="cat_id" name="cat_id">
                <option value="0">项目类别</option>
                <option value="1">团体赛</option>
                <option value="2">个人赛</option>
                <option value="3">男子比赛</option>
                <option value="4">女子比赛</option>
            </select>
            <input name="keyword" type="text" class="inpMain" value="项目名称" size="20" />
            <input name="submit" class="btnGray" type="button" value="查询" />
        </div>
        <div id="list">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th ><input type='checkbox' id='chkall' value='check'></th>
                        <th >编号</th>
                        <th >项目名称</th>
                        <th >项目类别</th>
                        <th >比赛时间</th>
                        <th >操作</th>
                    </tr>
                    <tbody class="project_content">

                    </tbody>
                </table>
                <div class="action">
                    <input name="submit" class="btn" type="button" value="批量删除" />
                </div>
        </div>
    </div>
</div>
</body>
</html>
