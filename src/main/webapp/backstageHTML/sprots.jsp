<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>设置比赛项目</title>
	    <link rel="stylesheet" href="css/font.css">
	    <link rel="stylesheet" href="css/index.css">
		<link rel="stylesheet" href="css/buttons.css">
	    <link href="../css/bootstrap-select.min.css" rel="stylesheet">
    	<link href="../css/style.css" rel="stylesheet">
	    <script src="lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
	    <script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="../js/sports.js"></script>
	</head>
	<body>
		<div class="layui-fluid">
		    <div class="layui-row layui-col-space15">
		        <div class="layui-col-md12">
		            <div class="layui-card">
		                <div class="layui-card-body ">
							<div class="layui-inline layui-show-xs-block">
								<input type="text" id="inpMain" name="username"  placeholder="请输入项目名称" autocomplete="off" class="layui-input">
							</div>
							<div class="layui-inline layui-show-xs-block">
								<button id="select" class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
							</div>
		                </div>
		                <div class="layui-card-header">
		                    <button class="layui-btn layui-btn-danger" onclick="delAll()" id="shanchu"><i class="layui-icon"></i>批量删除</button>
							<button class="layui-btn" onclick="xadmin.open('添加比赛项目','sportsadd.jsp',800,600)"><i class="layui-icon"></i>添加比赛项目</button>
							<button class="layui-btn" style="background-color: green;" id="kaiTong">开通报名</button>
							<button class="layui-btn" style="background-color: red;" id="guanBi">关闭报名</button>
							<button class="layui-btn" style="background-color: #4682B4;" onclick="delAll()">发送邮件</button>
		                </div>
		                <div class="layui-card-body layui-table-body layui-table-main">
		                    <table class="layui-table layui-form">
		                        <thead>
			                        <tr>
			                            <th>
			                                <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
			                            </th>
										<th>项目编号</th>
										<th>项目名称</th>
										<th>项目限制</th>
										<th>项目类别</th>
										<th>报名状态</th>
										<th>比赛状态</th>
										<th>操作</th>
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
	
	        //执行一个laydate实例
	        laydate.render({
	            elem: '#start' //指定元素
	        });
	        //执行一个laydate实例
	        laydate.render({
	            elem: '#end' //指定元素
	        });
	    });

	    function delAll (argument) {
	        var ids = [];
	
	        // 获取选中的id
	        $('tbody input').each(function(index, el) {
	            if($(this).prop('checked')){
	                ids.push($(this).val())
	            }
	        });
	    }
	</script>
</html>