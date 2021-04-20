<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	
	<head>
	    <meta charset="utf-8">
	    <title>最高纪录页面</title>
		<%User user = (User)request.getSession().getAttribute("user");%>
	    <link href="css/bootstrap-select.min.css" rel="stylesheet">
	    <link href="css/style.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	</head>
	
	<body>
		
		<!--主要部分-->
	    <div id="main-wrapper">
	    	
	    	<!--头部标题--> 
	        <div class="nav-header">
	            <a href="index.jsp" class="brand-logo">
	            	<h3>运动会信息管理</h3>
	            </a>
	            <div class="nav-control">
	                <div class="hamburger">
	                    <span class="line"></span><span class="line"></span><span class="line"></span>
	                </div>
	            </div>
	        </div>
	        
	        <!--头部-->
	        <div class="header">
	            <div class="header-content">
	                <nav class="navbar navbar-expand">
	                    <div class="collapse navbar-collapse justify-content-between">
	                        <div class="header-left">
	                            <div class="dashboard_bar">系统公告</div>
	                        </div>
	                        <ul class="navbar-nav header-right">
								<%if (user.getPower()==0){%>
									<li class="nav-item dropdown header-profile">
										<a href="backstageHTML/backstageindex.jsp">
											<i class="ti-panel" style="float: left; margin-right: 10px; margin-top: 6px;"></i>
											<p style="float: left;">进入后台</p>
										</a>
									</li>
								<%}%>
	                            <li class="nav-item dropdown header-profile">
	                                <a class="nav-link" href="javascript:void(0)" role="button" data-toggle="dropdown">
	                                    <img src="img/pic10.jpg" width="20" alt=""/>
										<div class="header-info">
											<span class="text-black">杨永琴</span>
											<p class="fs-12 mb-0">学生</p>
										</div>
	                                </a>
	                                <div class="dropdown-menu dropdown-menu-right">
	                                    <a href="login.jsp" class="dropdown-item ai-icon">
	                                        <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
	                                        <span class="ml-2">退出 </span>
	                                    </a>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
	                </nav>
	            </div>
	        </div>
	        
	        <!--侧边导航栏-->
	        <div class="dlabnav">
	            <div class="dlabnav-scroll">
					<ul class="metismenu" id="menu">
						<li>
	                    	<a href="index.jsp" class="ai-icon" aria-expanded="false">
								<i class="flaticon-381-television"></i>
								<span class="nav-text">首页</span>
							</a>
						</li>
						<li>
	                    	<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-notepad"></i>
								<span class="nav-text">个人信息</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="personal.jsp">个人信息</a></li>
	                            <li><a href="password.jsp">修改密码</a></li>
	                        </ul>
	                    </li>
						<li>
	                    	<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-layer-1"></i>
								<span class="nav-text">我的比赛</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="entered.jsp">报名比赛</a></li>
	                            <li><a href="personalresult.jsp">个人参赛成绩</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                    	<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false" style="color: #2953E8;">
								<i class="flaticon-381-network"></i>
								<span class="nav-text">运动会信息</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="schedule.jsp">赛事安排</a></li>
	                            <li><a href="journalism.jsp">赛事风采</a></li>
	                            <li>
	                            	<a class="has-arrow" href="javascript:void()" aria-expanded="false" style="color: #2953E8;">赛事成绩</a>
	                                <ul aria-expanded="false">
	                                    <li style="margin-left: 20px;"><a href="highest.jsp" style="color: #2953E8;">最高纪录保持者</a></li>
	                                    <li style="margin-left: 20px;"><a href="record.jsp">查看赛事成绩</a></li>
	                                    <li style="margin-left: 20px;"><a href="points.jsp">代表队积分成绩</a></li>
	                                </ul>
	                            </li>
	                        </ul>
	                    </li>
	               </ul>
				</div>
	        </div>
	        
	        
	        <!--内容正文-->
	        <div class="content-body">
	            <div class="container-fluid">
	                <div class="page-titles">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">运动会信息</a></li>
							<li class="breadcrumb-item"><a href="javascript:void(0)">赛事成绩</a></li>
							<li class="breadcrumb-item active"><a href="javascript:void(0)">最高纪录保持者</a></li>
						</ol>
	                </div>
	                
	                <div class="row">
	                    <div class="col-lg-12">
	                        <div class="card">
	                            <div class="card-header">
	                                <h4 class="card-title">运动会最高纪录（女子）</h4>
	                            </div>
	                            <div class="card-body">
	                                <div class="table-responsive">
	                                    <table class="table header-border table-responsive-sm">
	                                        <thead>
	                                            <tr>
	                                                <th>项目</th>
	                                                <th>代表队</th>
	                                                <th>姓名</th>
	                                                <th>成绩</th>
	                                                <th>时间</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
                                        	<td>100米</td>
                                        	<td>管理学院</td>
                                        	<td>伍冰如</td>
                                        	<td>12.7秒</td>
                                        	<td>1987年</td>
                                        </tr>
                                        <tr>
                                        	<td>200米</td>
                                        	<td>财经学院</td>
                                        	<td>谢明芳</td>
                                        	<td>26.40秒</td>
                                        	<td>2016年</td>
                                        </tr>
                                        <tr>
                                        	<td>400米</td>
                                        	<td>管理学院</td>
                                        	<td>吴元秀</td>
                                        	<td>59.8秒</td>
                                        	<td>1987年</td>
                                        </tr>
                                        <tr>
                                        	<td>800米</td>
                                        	<td>土建学院</td>
                                        	<td>梁妮</td>
                                        	<td>2分29.23秒</td>
                                        	<td>2014年</td>
                                        </tr>
                                        <tr>
                                        	<td>1500米</td>
                                        	<td>土建学院</td>
                                        	<td>尹倩玲</td>
                                        	<td>5分18.32秒</td>
                                        	<td>2016年</td>
                                        </tr>
                                        <tr>
                                        	<td>3000米</td>
                                        	<td>电气学院</td>
                                        	<td>龙彩虹</td>
                                        	<td>11分54.78秒</td>
                                        	<td>2007年</td>
                                        </tr>
										<tr>
                                        	<td>4*100米</td>
                                        	<td>管理学院</td>
                                        	<td>吴元秀</td>
                                        	<td>52.7秒</td>
                                        	<td>1987年</td>
                                        </tr>
										<tr>
                                        	<td>跳高</td>
											<td>汽车学院</td>
                                        	<td>曾小洋</td>
                                        	<td>1.46米</td>
                                        	<td>2008年</td>
                                        </tr>
                                        <tr>
                                        	<td>跳远</td>
											<td>管理学院</td>
                                        	<td>袁文敏</td>
                                        	<td>5.18米</td>
                                        	<td>1988年</td>
                                        </tr>
                                        <tr>
                                        	<td>后抛实心球</td>
											<td>机械学院</td>
                                        	<td>方利合</td>
                                        	<td>19.60米</td>
                                        	<td>2010年</td>
                                        </tr>
                                        <tr>
                                        	<td>三级跳远</td>
											<td>土建学院</td>
                                        	<td>谭亮</td>
                                        	<td>10.74米</td>
                                        	<td>2018年</td>
                                        </tr>
                                        <tr>
                                        	<td>垒球</td>
											<td>生化学院</td>
                                        	<td>甘冰冰</td>
                                        	<td>52.52米</td>
                                        	<td>2010年</td>
                                        </tr>
                                        <tr>
                                        	<td>铅球</td>
											<td>鹿山学院</td>
                                        	<td>赵添瑶</td>
                                        	<td>10.83米</td>
                                        	<td>2018年</td>
                                        </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-12">
	                        <div class="card">
	                            <div class="card-header">
	                                <h4 class="card-title">运动会最高纪录（男子）</h4>
	                            </div>
	                            <div class="card-body">
	                                <div class="table-responsive">
	                                    <table class="table header-border table-responsive-sm">
	                                        <thead>
	                                            <tr>
	                                                <th>项目</th>
	                                                <th>代表队</th>
	                                                <th>姓名</th>
	                                                <th>成绩</th>
	                                                <th>时间</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
                                        	<td>100米</td>
                                        	<td>电气学院</td>
                                        	<td>韦俊权</td>
                                        	<td>10.98秒</td>
                                        	<td>2006年</td>
                                        </tr>
                                        <tr>
                                        	<td>200米</td>
                                        	<td>电气学院</td>
                                        	<td>韦俊权</td>
                                        	<td>22.55秒</td>
                                        	<td>2006年</td>
                                        </tr>
                                        <tr>
                                        	<td>400米</td>
                                        	<td>电气学院</td>
                                        	<td>韦俊权</td>
                                        	<td>50.60秒</td>
                                        	<td>2005年</td>
                                        </tr>
                                        <tr>
                                        	<td>800米</td>
                                        	<td>机械学院</td>
                                        	<td>张昌朝</td>
                                        	<td>2分0.52秒</td>
                                        	<td>2009年</td>
                                        </tr>
                                        <tr>
                                        	<td>1500米</td>
                                        	<td>社科学院</td>
                                        	<td>李喜超</td>
                                        	<td>4分22.94秒</td>
                                        	<td>2014年</td>
                                        </tr>
                                        <tr>
                                        	<td>3000米</td>
                                        	<td>机械学院</td>
                                        	<td>周林青</td>
                                        	<td>9分29.1秒</td>
                                        	<td>1990年</td>
                                        </tr>
										<tr>
                                        	<td>4*100米</td>
                                        	<td>土建学院</td>
                                        	<td></td>
                                        	<td>44.40秒</td>
                                        	<td>2014年</td>
                                        </tr>
										<tr>
                                        	<td>跳高</td>
											<td>土建学院</td>
                                        	<td>徐宗佩</td>
                                        	<td>1.90米</td>
                                        	<td>2015年</td>
                                        </tr>
                                        <tr>
                                        	<td>跳远</td>
											<td>职教学院</td>
                                        	<td>梁伟</td>
                                        	<td>6.61米</td>
                                        	<td>2016年</td>
                                        </tr>
                                        <tr>
                                        	<td>后抛实心球</td>
											<td>土建学院</td>
                                        	<td>徐宗佩</td>
                                        	<td>25.24米</td>
                                        	<td>2014年</td>
                                        </tr>
                                        <tr>
                                        	<td>三级跳远</td>
											<td>电气学院</td>
                                        	<td>李广志</td>
                                        	<td>14.03米</td>
                                        	<td>2016年</td>
                                        </tr>
                                        <tr>
                                        	<td>垒球</td>
											<td>土建学院</td>
                                        	<td>李振国</td>
                                        	<td>77.52米</td>
                                        	<td>2012年</td>
                                        </tr>
                                        <tr>
                                        	<td>铅球</td>
											<td>鹿山学院</td>
                                        	<td>秦  昊</td>
                                        	<td>12.17米</td>
                                        	<td>2014年</td>
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
	    </div>
	    <!-- 引入JS -->
	    <script src="js/global.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
	    <script src="js/custom.min.js"></script>
		<script src="js/dlabnav-init.js"></script>
	</body>

</html>