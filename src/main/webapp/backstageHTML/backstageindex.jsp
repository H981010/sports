<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>后台系统左菜单栏</title>
        <% User user = (User) session.getAttribute("user");%>
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/iconfont.css">
        <script src="lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/index.js"></script>
    </head>
    <body class="index">
    	
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="./index.html">运动会信息后台管理</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>

            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;"><%=user.getUserName()%></a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('个人信息','password.jsp')">修改密码</a></dd>
                        <dd>
                            <a onclick="xadmin.open('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                        <dd>
                            <a href="../login.jsp">退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="../index.jsp">前台首页</a></li>
            </ul>



        </div>
        <!-- 顶部结束 -->
        
        <!-- 中部开始 -->
        
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('我的桌面','welcome.jsp')">
                            <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                            <cite>首页</cite>
                        </a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="文章管理">&#xe6a2;</i>
                            <cite>秩序册安排</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('比赛项目设置','sprots.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>比赛项目设置</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('比赛项目安排','daily.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>比赛项目安排</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('比赛分组编道','grouprank.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>比赛分组编道</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('运动员名单','player.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>运动员名单</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('合成秩序册','orderbook.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>合成秩序册</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="赛事成绩">&#xe604;</i>
                            <cite>赛事成绩</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('录入赛事成绩','enterscore.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>录入赛事成绩</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('赛事成绩排名','rankscore.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>赛事成绩排名</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('代表队积分统计','integral.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>代表队积分统计</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('更新最高纪录','highestscore.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>更新最高纪录</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('合成成绩册','gradebook.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>合成成绩册</cite>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="辅助功能">&#xe70c;</i>
                            <cite>辅助功能</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('公告管理','notice.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>公告管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('新闻管理','news.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>新闻管理</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i>
                            <cite>管理员管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('管理员列表','admin.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>管理员列表</cite></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧菜单结束 -->
        
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        
        <!-- 中部结束 -->

    </body>
    <script src="js/jquery.min.js"></script>

</html>

<script>
    window.onload=function () {
        var click=document.getElementById('new-nav');
        var news=document.getElementById('news');
        click.addEventListener('mousemove',function () {
            news.style.display='block';
        });
        click.addEventListener('mouseout',function () {
            news.style.display='none';
        });

        var gonggao=document.getElementById('gonggao');
        var gonggaos=document.getElementById('gonggaos');
        gonggao.addEventListener('mousemove',function () {
            gonggaos.style.display='block';
        });
        gonggao.addEventListener('mouseout',function () {
            gonggaos.style.display='none';
        });
    }




</script>

