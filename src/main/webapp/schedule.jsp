<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <title>赛事安排页面</title>
		<%User user = (User)request.getSession().getAttribute("user");%>
	    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
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
	                    	<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false"  style="color: #2953E8;">
								<i class="flaticon-381-network"></i>
								<span class="nav-text">运动会信息</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="schedule.jsp" style="color: #2953E8;">赛事安排</a></li>
	                            <li><a href="journalism.jsp">赛事风采</a></li>
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
							<li class="breadcrumb-item active"><a href="javascript:void(0)">赛事安排</a></li>
						</ol>
	                </div>
	                <div class="row">
	                    <div class="col-12">
	                        <div class="card">
	                            <div class="card-header">
	                                <h4 class="card-title">运动会比赛项目日程安排</h4>
	                            </div>
	                            <div class="card-body">
	                                <div class="table-responsive">
	                                    <table id="example" class="display min-w850">
	                                        <thead>
	                                            <tr>
	                                                <th>序号</th>
	                                                <th>项目名称</th>
	                                                <th>项目限制</th>
	                                                <th>赛次</th>
	                                                <th>比赛时间</th>
	                                                <th>比赛地点</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
	                                                <td>1</td>
	                                                <td>100米</td>
	                                                <td>女子</td>
	                                                <td>预赛</td>
	                                                <td>2020年11月2日  8:20</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>2</td>
	                                                <td>垒球</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  8:35</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>3</td>
	                                                <td>跳高</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  8:35</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>4</td>
	                                                <td>100米</td>
	                                                <td>男子</td>
	                                                <td>预赛</td>
	                                                <td>2020年11月2日  8:50</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>5</td>
	                                                <td>400米</td>
	                                                <td>女子</td>
	                                                <td>预决赛</td>
	                                                <td>2020年11月2日  9:10</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>6</td>
	                                                <td>铅球</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  9:35</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>7</td>
	                                                <td>跳远</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  9:35</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>8</td>
	                                                <td>400米</td>
	                                                <td>男子</td>
	                                                <td>预决赛</td>
	                                                <td>2020年11月2日  9:50</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>9</td>
	                                                <td>100米</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  10:10</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>10</td>
	                                                <td>后抛实心球</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  10:35</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>11</td>
	                                                <td>三级跳</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  10:35</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>12</td>
	                                                <td>100米</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  10:40</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>13</td>
	                                                <td>4*100米</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  11:00</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>14</td>
	                                                <td>4*100米</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  11:30</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>15</td>
	                                                <td>200米</td>
	                                                <td>女子</td>
	                                                <td>预决赛</td>
	                                                <td>2020年11月2日  14:30</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>16</td>
	                                                <td>垒球</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  14:45</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>17</td>
	                                                <td>跳高</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  14:45</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>18</td>
	                                                <td>200米</td>
	                                                <td>男子</td>
	                                                <td>预决赛</td>
	                                                <td>2020年11月2日  15:00</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>19</td>
	                                                <td>铅球</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  15:25</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>20</td>
	                                                <td>跳远</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  15:25</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>21</td>
	                                                <td>800米</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  15:25</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>22</td>
	                                                <td>1500米</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  15:50</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>23</td>
	                                                <td>后抛实心球</td>
	                                                <td>女子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  16:20</td>
	                                                <td>田径场</td>
	                                            </tr>
	                                            <tr>
	                                                <td>24</td>
	                                                <td>三级跳</td>
	                                                <td>男子</td>
	                                                <td>决赛</td>
	                                                <td>2020年11月2日  16:20</td>
	                                                <td>田径场</td>
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
	    <!--引入JS-->
	    <script src="js/global.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
	    <script src="js/custom.min.js"></script>
		<script src="js/dlabnav-init.js"></script>
	    <script src="js/jquery.dataTables.min.js"></script>
	    <script src="js/datatables.init.js"></script>
	</body>
</html>