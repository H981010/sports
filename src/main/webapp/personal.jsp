<%@ page import="sportsinformation.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <title>个人信息页面</title>
		<%User user = (User)request.getSession().getAttribute("user");%>
	    <link href="css/bootstrap-select.min.css" rel="stylesheet">
		<link href="css/lightgallery.min.css" rel="stylesheet">
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
											<%if (user.getPower()==0){%>
												<p class="fs-12 mb-0">管理员</p>
											<%}else {%>
												<p class="fs-12 mb-0">学生</p>
											<%}%>
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
	                    	<a class="has-arrow ai-icon"  aria-expanded="false" style="color: #2953E8;">
								<i class="flaticon-381-notepad"></i>
								<span class="nav-text">个人信息</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="personal.jsp" style="color: #2953E8;">个人信息</a></li>
	                            <li><a href="password.jsp">修改密码</a></li>
	                        </ul>
	                    </li>
						<li>
	                    	<a class="has-arrow ai-icon"  aria-expanded="false">
								<i class="flaticon-381-layer-1"></i>
								<span class="nav-text">我的比赛</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="entered.jsp">报名比赛</a></li>
	                            <li><a href="personalresult.jsp">个人参赛成绩</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                    	<a class="has-arrow ai-icon"  aria-expanded="false">
								<i class="flaticon-381-network"></i>
								<span class="nav-text">运动会信息</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="schedule.jsp">赛事安排</a></li>
	                            <li><a href="journalism.jsp">赛事风采</a></li>
	                            <li>
	                            	<a class="has-arrow"  aria-expanded="false">赛事成绩</a>
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
							<li class="breadcrumb-item"><a href="javascript:void(0)">个人信息</a></li>
							<li class="breadcrumb-item active"><a href="javascript:void(0)">我的信息</a></li>
						</ol>
	                </div>
	                <div class="row">
	                    <div class="col-lg-4 col-md-5">
	                        <div class="card card-user">
	                            <div class="image">
	                                <img src="img/background.jpg" alt="..."/>
	                            </div>
	                            <div class="content">
	                                <div class="author">
	                                  <img class="avatar border-white" src="img/face-3.jpg" alt="..."/>
	                                  <h4 class="title"><%=user.getUserName() %><br />
	                                     <a href="#"><small><%=user.getSex() %></small></a>
	                                  </h4>
	                                </div>
	                                <p class="description text-center">
										<%=user.getHobby() %>
	                                </p>
	                            </div>
	                            <hr>
	                            <div class="text-center">
	                                <div class="row">
	                                    <div class="col-md-4 col-md-offset-1">
	                                        <h5>年龄<br /><br /><small><%=user.getAge() %>岁</small></h5>
	                                    </div>
	                                    <div class="col-md-4">
	                                        <h5>身高<br /><br /><small><%=user.getHeight()%>cm</small></h5>
	                                    </div>
	                                    <div class="col-md-4">
	                                        <h5>体重<br /><br /><small><%=user.getWeight()%>kg</small></h5>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-8 col-md-7">
	                        <div class="card">
	                            <div class="header">
	                                <h4 class="title">个人信息修改</h4>
	                            </div>
	                            <div class="content">
	                                <form>
	                                    <div class="row">
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>学院</label>
	                                                <input type="text" class="form-control border-input" disabled placeholder="College" value="<%=user.getClasses().getCollege().getCollegeName() %>">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>班级</label>
	                                                <input type="text" class="form-control border-input" disabled placeholder="Class" value="<%=user.getClasses().getClassName() %>">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>学号</label>
	                                                <input type="text" class="form-control border-input" disabled placeholder="StudentNumber" value="<%=user.getJobNumber() %>">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>用户名</label>
	                                                <input type="text" class="form-control border-input" disabled placeholder="Username" value="<%=user.getUserName() %>">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label for="exampleInputEmail1">邮箱</label>
	                                                <input type="email" class="form-control border-input" placeholder="Email" value="<%=user.getEmail() %>">
	                                            </div>
	                                        </div>
											<div class="col-md-4">
												<div class="form-group">
													<label>电话</label>
													<input type="text" class="form-control border-input" placeholder="Telephone" value="11123455629">
												</div>
											</div>
	                                    </div>
	                                    <div class="row">
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>年龄</label>
	                                                <input type="text" class="form-control border-input" placeholder="Age" value="<%=user.getAge() %>岁">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>身高</label>
	                                                <input type="text" class="form-control border-input" placeholder="Height" value="<%=user.getHeight() %>cm">
	                                            </div>
	                                        </div>
	                                         <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>体重</label>
	                                                <input type="text" class="form-control border-input" placeholder="Weight" value="<%=user.getWeight() %>kg">
	                                            </div>
	                                        </div>
	                                    </div>
	
	                                    <div class="row">
	                                        <div class="col-md-12">
	                                            <div class="form-group">
	                                                <label>爱好</label>
	                                                <textarea rows="5" class="form-control border-input" placeholder="请介绍你的爱好"><%=user.getHobby() %></textarea>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="text-center">
	                                        <button type="submit" class="btn btn-info btn-fill btn-wd">保存</button>
	                                    </div>
	                                    <div class="clearfix"></div>
	                                </form>
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
		<script>
			$('#lightgallery').lightGallery({
				thumbnail:true,
			});
		</script>	
	</body>
</html>