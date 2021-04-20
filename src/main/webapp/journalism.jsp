<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <title>新闻信息页面</title>
		<%User user = (User)request.getSession().getAttribute("user");%>
	    <link href="css/bootstrap-select.min.css" rel="stylesheet">
	    <link href="css/style.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	</head>
	
	<body>
		
	    <!--主要部分开始-->
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
	                            <li><a href="journalism.jsp" style="color: #2953E8;">赛事风采</a></li>
	                            <li>
	                            	<a class="has-arrow" href="javascript:void()" aria-expanded="false">赛事成绩</a>
	                                <ul aria-expanded="false">
	                                    <li style="margin-left: 20px;"><a href="highest.jsp">最高纪录保持者</a></li>
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
							<li class="breadcrumb-item active"><a href="javascript:void(0)">赛事风采</a></li>
						</ol>
	                </div>
	                <div class="row">
	                    <div class="col-xl-6">
	                        <div class="card mb-3">
	                            <img class="card-img-top img-fluid" src="img/news02.jpg" alt="Card image cap">
	                            <div class="card-header">
	                                <h5 class="card-title">开幕式入场</h5>
	                            </div>
	                            <div class="card-body">
	                                <p class="card-text">
	                                	彩旗招展,迎风飘扬.由巴中四中80名学生组成的彩旗队正迈着轻快的步伐向我们走来.一幅幅彩旗似流转的美丽画卷,把美好的希冀、动人的诉说,把对未来无限的期望挥洒在人们的心坎上.
	                                </p>
	                            </div>
	                            <div class="card-footer">
	                                <p class="card-text d-inline">2020年11月5日</p>
	                                <a href="javascript:void()" class="card-link float-right">编辑：小明</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-xl-6">
	                        <div class="card mb-3">
	                            <img class="card-img-top img-fluid" src="img/news.jpg" alt="Card image cap">
	                            <div class="card-header">
	                                <h5 class="card-title">迎着朝阳向前跑</h5>
	                            </div>
	                            <div class="card-body">
	                                <p class="card-text">一滴滴汗水, 飘洒在绿茵场上， 伴随着矫健的步伐， 奏出希望的乐章。 一种种信念， 放在蔚蓝的天空， 伴随着你那深沉的眼光， 画出美丽的弧线。 人生能有几回搏？ 千百双眼睛注视着你， 为了希望、为了胜利， 跑出青春的梦想
	                                </p>
	                            </div>
	                            <div class="card-footer">
	                                <p class="card-text d-inline">2020年11月5日</p>
	                                <a href="javascript:void()" class="card-link float-right">编辑：小明</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-xl-6">
	                        <div class="card mb-3">
	                            <img class="card-img-top img-fluid" src="img/new03.jpg" alt="Card image cap">
	                            <div class="card-header">
	                                <h5 class="card-title">挥洒青春</h5>
	                            </div>
	                            <div class="card-body">
	                                <p class="card-text">
	                                	挥洒着青春的汗水，迎着初生的太阳，对着那个矫健的身影，是我们学校的同学在张扬着青春的的个性，在为青春的生命呐喊。我们正值旺盛的季节，需要运动来激发内心每一个生命细胞。每一次的跳跃，每一次的投掷，每一次的奔跑，每次都是力量与激情的爆发。青春如此多娇，引无数英雄尽折腰；生命如此美妙，要张扬年轻的骄傲。加油吧，运动健儿们，尽洒英雄本色，在运动场上一决高低。
	                                </p>
	                            </div>
	                            <div class="card-footer">
	                                <p class="card-text d-inline">2020年11月5日</p>
	                                <a href="javascript:void()" class="card-link float-right">编辑：小明</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-xl-6">
	                        <div class="card mb-3">
	                            <img class="card-img-top img-fluid" src="img/news04.jpg" alt="Card image cap">
	                            <div class="card-header">
	                                <h5 class="card-title">跳高</h5>
	                            </div>
	                            <div class="card-body">
	                                <p class="card-text">
	                                	更高，更高，更高，不断地进步，超越自己超越他人，刷新历史记录，是跳高者追求的最高目标。
	                                	眼前横放在半空中的一根细细的杆子，便是跳高运动健儿———一你们面临的挑战。
	                                	它细，然而却像你生命中的一道坎，正因为这道坎，你的人生你的青春年华又留下了一个难忘的回忆。
	                                	跨过了，宛如那迎着风霜绽放的梅花;没跨过，宛如屡败屡战的勇士，至少曾经努力过，奋斗过，参与过。

	                                </p>
	                            </div>
	                            <div class="card-footer">
	                                <p class="card-text d-inline">2020年11月5日</p>
	                                <a href="javascript:void()" class="card-link float-right">编辑：小明</a>
	                            </div>
	                        </div>
	                    </div>
	                    <!--<div class="col-xl-6">
	                        <div class="card mb-3">
	                            <div class="card-header">
	                                <h5 class="card-title">Card title</h5>
	                            </div>
	                            <div class="card-body">
	                                <p class="card-text">This is a wider card with supporting text and below as a natural lead-in to the additional content. This content is a little</p>
	                            </div>
	                            <img class="card-img-bottom img-fluid" src="img/news02.jpg" alt="Card image cap">
	                            <div class="card-footer">
	                                <p class="card-text d-inline">Card footer</p>
	                                <a href="javascript:void()" class="card-link float-right">Card link</a>
	                            </div>
	                        </div>
	                    </div>-->
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