<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

	<head>
	    <meta charset="utf-8">
	    <title>查看赛事成绩页面</title>
		<%User user = (User)request.getSession().getAttribute("user");%>
	    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
	    <link href="css/bootstrap-select.min.css" rel="stylesheet">
	    <link href="css/style.css" rel="stylesheet">
	    <link rel="stylesheet" type="text/css" href="css/component.css"/>
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
	                            <li><a href="journalism.jsp">赛事风采</a></li>
	                            <li>
	                            	<a class="has-arrow" href="javascript:void()" aria-expanded="false" style="color: #2953E8;">赛事成绩</a>
	                                <ul aria-expanded="false">
	                                    <li style="margin-left: 20px;"><a href="highest.jsp">最高纪录保持者</a></li>
	                                    <li style="margin-left: 20px;"><a href="record.jsp" style="color: #2953E8;">查看赛事成绩</a></li>
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
							<li class="breadcrumb-item active"><a href="javascript:void(0)">查看赛事成绩</a></li>
						</ol>
	                </div>
	                
	                <div class="row">
						<div class="col-12">
	                        <div class="card">
	                            <div class="card-header">
	                                <h4 class="card-title">赛事成绩</h4>
	                            </div>
	                            <div class="card-body">
	                                <div class="table-responsive">
	                                    <table id="example2" class="display">
	                                        <thead>
	                                            <tr>
	                                                <th>序号</th>
	                                                <th>比赛项目</th>
	                                                <th>参赛代表队</th>
	                                                <th>参赛人</th>
													<th>成绩</th>
													<th>名次</th>
	                                                <th>操作</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody class="arrangement_content">
	                                            <tr>
	                                                <td>01</td>
	                                                <td>男子100米</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-1">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>02</td>
	                                                <td>女子100米</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-2">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>03</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-3">详情</a></td>
	                                            	
	                                            </tr>
	                                            <tr>
													<td>04</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-4">详情</a></td>
	                                            	
	                                            </tr>
	                                            <tr>
													<td>05</td>
	                                               <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-5">详情</a></td>
	                                            	
	                                            </tr>
	                                            <tr>
													<td>06</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-6">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>07</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-7">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>08</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-8">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>09</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-9">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>10</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-14">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>11</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-11">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>12</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                               <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-12">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>13</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-13">详情</a></td>
	                                            </tr>
	                                            <tr>
													<td>14</td>
	                                                <td>Tiger Nixon</td>
	                                                <td>#54605</td>
	                                                <td>Library</td>
	                                                <td>Cash</td>
	                                                <td>2011/04/25</td>
	                                                <td><a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-14">详情</a></td>
	                                            </tr>
	                                        </tbody>
	                                    </table>
	                                    <div class="md-modal md-effect-2" id="modal-1">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-2">
											<div class="md-content" >
												<h3>女子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>杨永琴</td>
															<td>201709601259</td>
															<td>启迪数字学院</td>
															<td>30.00秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-3">
											<div class="md-content" >
												<h3>400米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>yte</td>
															<td>201709601459</td>
															<td>启迪数字学院</td>
															<td>1分20.05秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-4">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-5">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-6">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-7">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-8">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-9">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-10">
											<div class="md-content" >
												<h3>modal-10</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-11">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-12">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-13">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-modal md-effect-2" id="modal-14">
											<div class="md-content" >
												<h3>男子100米成绩详细</h3>
												<div>
													<table class="table table-hover">
														<tr>
															<th>参赛人</th>
															<th>学号</th>
															<th>参赛代表队</th>
															<th>成绩</th>
															<th>名次</th>
														</tr>
														<tr>
															<td>胡涛全</td>
															<td>201609401102</td>
															<td>计通学院</td>
															<td>11.20秒</td>
															<td>1</td>
														</tr>
													</table>
												<button class="md-close btn-sm btn-primary">Close me!</button>
												</div>
											</div>
										</div>
										<div class="md-overlay"></div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
					</div>
	            </div>
	        </div>
	    </div>
		<!--引入JS-->
	    <script src="js/global.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
	    <script src="js/custom.min.js"></script>
		<script src="js/dlabnav-init.js"></script>
	    <script src="js/jquery.dataTables.min.js"></script>
	    <script src="js/datatables.init.js"></script>
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>
		<script src="js/record.js"></script>
	</body>
</html>