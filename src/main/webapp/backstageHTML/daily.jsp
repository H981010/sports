<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>比赛项目日程安排</title>
	<link rel="stylesheet" href="css/font.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/buttons.css">
	<link href="../css/bootstrap-select.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="admin_js/daily.js"></script>
	<script src="lib/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<div class="layui-fluid">
	<div class="layui-row layui-col-space15">
		<div class="layui-col-md12">
			<div class="layui-card">
				<div class="layui-card-body ">
					<form class="layui-form layui-col-space5">
						<span id="">项目名称：</span>
						<div class="layui-inline layui-show-xs-block">
							<input type="text" name="username"  placeholder="请输入项目名称" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-inline layui-show-xs-block">
							<button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
						</div>
					</form>
				</div>
				<div class="layui-card-body layui-table-body layui-table-main">
					<table class="layui-table layui-form">
						<thead>
						<tr>
							<th><strong>项目编号</strong></th>
							<th><strong>项目名称</strong></th>
							<th><strong>项目限制</strong></th>
							<th><strong>项目类型</strong></th>
							<th><strong>参赛人数</strong></th>
							<th><strong>参赛组数</strong></th>
							<th><strong>比赛时间</strong></th>
							<th><strong>比赛地点</strong></th>
							<th><strong>比赛状态</strong></th>
							<th><strong>操作</strong></th>
						</tr>
						</thead>
						<tbody class="project_content">

						</tbody>
					</table>
				</div>
				<div class="layui-card-body ">
					<div class="page">
						<div>
							<a class="prev" href="">&lt;&lt;</a>
							<a class="num" href="">1</a>
							<span class="current">2</span>
							<a class="num" href="">3</a>
							<a class="num" href="">4</a>
							<a class="next" href="">&gt;&gt;</a></div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
</body>
<script>
	layui.use(['laydate','form'], function(){
		var laydate = layui.laydate;
		var  form = layui.form;
		// 监听全选
		form.on('checkbox(checkall)', function(data){

			if(data.elem.checked){
				$('tbody input').prop('checked',true);
			}else{
				$('tbody input').prop('checked',false);
			}
			form.render('checkbox');
		});
	});
</script>
<script src="../js/global.min.js"></script>
<script src="../js/bootstrap-select.min.js"></script>
<script src="../js/custom.min.js"></script>
</html>