<%@ page import="sportsinformation.entity.User" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <title>系统公告页面</title>
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
	                    	<a href="index.jsp" class="ai-icon" aria-expanded="false" style="color: #2953E8;">
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
	                    	<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-network"></i>
								<span class="nav-text">运动会信息</span>
							</a>
	                        <ul aria-expanded="false">
	                            <li><a href="schedule.jsp">赛事安排</a></li>
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
							<li class="breadcrumb-item"><a href="javascript:void(0)">首页</a></li>
							<li class="breadcrumb-item active"><a href="javascript:void(0)">系统公告</a></li>
						</ol>
	                </div>
	                <div class="row">
	                    <div class="col-xl-12">
	                        <div class="card">
	                            <div class="card-body">
	                                <div class="profile-tab">
	                                    <div class="custom-tab-1">
	                                        <ul class="nav nav-tabs">
	                                            <li class="nav-item"><a href="#my-posts" data-toggle="tab" class="nav-link active show">运动会开幕式流程</a></li>
	                                            <li class="nav-item"><a href="#about-me" data-toggle="tab" class="nav-link">运动会注意事项</a></li>
	                                        </ul>
	                                        <div class="tab-content">
	                                            <div id="my-posts" class="tab-pane fade active show">
	                                                <div class="my-post-content pt-3">
	                                                    <div class="profile-uoloaded-post border-bottom-1 pb-5">
	                                                        <img src="img/gonggao1.jpg" alt="" class="img-fluid">
	                                                        <div class="profile-about-me">
			                                                    <div class="pt-4 border-bottom-1 pb-3">
			                                                        <h4 class="text-primary">时间：2020年11月2日</h4>
			                                                        <h4 class="text-primary">地点：广西科技大学田径场</h4>
			                                                    </div>
			                                                </div>
			                                                <div class="profile-personal-info">
			                                                    <h4 class="text-primary mb-4">开幕式流程如下：</h4>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">1.运动员、裁判员入场</h5>
			                                                        </div>
			                                                    </div>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">2.升国旗，奏唱国歌</h5>
			                                                        </div>
			                                                    </div>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">3.介绍出席开幕式的领导、嘉宾 </h5>
			                                                        </div>
			                                                    </div>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">4.运动员代表宣誓 </h5>
			                                                        </div>
			                                                    </div>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">5.裁判员代表宣誓</h5>
			                                                        </div>
			                                                    </div>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">6.校领导致开幕词 </h5>
			                                                        </div>
			                                                    </div>
			                                                    <div class="row mb-2">
			                                                        <div class="col-3">
			                                                            <h5 class="f-w-500">7.田径比赛正式开始 </h5>
			                                                        </div>
			                                                    </div>
			                                                </div>
	                                                        <p>为进一步贯彻落实教育部、国家体育总局、共青团中央《关于开展全国亿万学生阳光体育运动》的文件精神，
	                                                        	进一步实施素质教育，推动和丰富我校学生课外体育活动的开展，增强学生身体素质，使学生树立“每天锻炼一小时，
	                                                        	健康工作五十年，幸福生活一辈子”的体育锻炼健康意识。</p>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div id="about-me" class="tab-pane fade">
	                                            	<img src="img/gonggao1.jpg" alt="" class="img-fluid">
	                                                <div class="profile-personal-info">
	                                                	<div class="profile-about-me">
			                                                    <div class="pt-4 border-bottom-1 pb-3">
			                                                        <h4 class="text-primary">注意事项</h4>
			                                                    </div>
			                                                </div>
	                                                    <div class="row mb-2">
	                                                        <div class="col-12">
	                                                            <h5 class="f-w-500">1、赛前做好运动员的训练工作，注意训练的时间与强度，早上不要五点钟、晚上晚自学以后还有人在练，运动量不能太大，训练前要做好准备活动，不能一开始就直接进行专项练习，做好身体的全面准备活动，防止运动受伤 </h5>
	                                                        </div>
	                                                    </div>
	                                                    <div class="row mb-2">
	                                                        <div class="col-12">
	                                                            <h5 class="f-w-500">2、凡有心脏病、慢性疾病等、不适合参加剧烈运动的人员，不要参加比赛。重感冒的也不能参加比赛 </h5>
	                                                        </div>
	                                                    </div>
	                                                    <div class="row mb-2">
	                                                        <div class="col-12">
	                                                            <h5 class="f-w-500">3、临赛前不可吃得过饱或者过多饮水。临赛前半小时内。可以吃些巧克力，以增加热量。 少吃苦油腻的食物。多吃一些容易消化的食物</h5>
	                                                        </div>
	                                                    </div>
	                                                    <div class="row mb-2">
	                                                        <div class="col-12">
	                                                            <h5 class="f-w-500">4、比赛结束后，不要立即停下来休息，要坚持做好放松活动，例如慢跑等，使心脏逐渐恢复平静。剧烈运动以后，不要马上大量饮水、吃冷饮，也不要立即洗浴</h5>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
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
		<script>
			$('#lightgallery').lightGallery({
				thumbnail:true,
			});
		</script>
		<script src="js/index.js"></script>
	</body>
</html>