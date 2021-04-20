<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>最高纪录</title>
	    <link rel="stylesheet" href="css/font.css">
	    <link rel="stylesheet" href="css/index.css">
	    <link rel="stylesheet" type="text/css" href="../css/style.css"/>
	    <link href="../css/lightgallery.min.css" rel="stylesheet">
	    <script src="lib/layui/layui.js" charset="utf-8"></script>
	    <script type="text/javascript" src="js/index.js"></script>
	    <script src="../js/dlabnav-init.js"></script>
		<script src="../js/global.min.js"></script>
	    <script src="../js/custom.min.js"></script>
	</head>
	<body>
		<div class="layui-fluid">
		    <div class="layui-row layui-col-space15">
		        <div class="layui-col-md12">
		        	<div class="col-xl-12">
	                        <div class="card">
	                            <div class="card-body">
	                                <div class="profile-tab">
	                                    <div class="custom-tab-1">
	                                        <ul class="nav nav-tabs">
	                                            <li class="nav-item"><a href="#my-posts" data-toggle="tab" class="nav-link active show">女子最高纪录</a></li>
	                                            <li class="nav-item"><a href="#about-me" data-toggle="tab" class="nav-link">男子最高纪录</a></li>
	                                        </ul>
	                                        <div class="tab-content">
	                                            <div id="my-posts" class="tab-pane fade active show">
	                                                <table class="layui-table layui-form">
									                    <thead>
										                    <tr>
											                    <th>项目名称</th>
											                    <th>姓名</th>
											                   	<th>代表队</th>
											                    <th>成绩</th>
											                    <th>时间</th>
										                    </tr>
									                    </thead>
									                    <tbody>
									                        <tr>
									                        	<td>100米</td>
									                        	<td>伍冰如</td>
									                        	<td>管理学院</td>
									                        	<td>12.7秒</td>
									                        	<td>1987年</td>
									                        </tr>
									                        <tr>
									                        	<td>200米</td>
									                        	<td>谢明芳</td>
									                        	<td>财经学院</td>
									                        	<td>26.40秒</td>
									                        	<td>2016年</td>
									                        </tr>
									                        <tr>
									                        	<td>跳高</td>
									                        	<td>曾小洋</td>
									                        	<td>汽车学院</td>
									                        	<td>1.46米</td>
									                        	<td>2008年</td>
									                        </tr>
									                    </tbody>
	                                                </table>
	                                            </div>
	                                            <div id="about-me" class="tab-pane fade">
	                                            	<table class="layui-table layui-form">
									                    <thead>
										                    <tr>
											                    <th>项目名称</th>
											                    <th>姓名</th>
											                   	<th>代表队</th>
											                    <th>成绩</th>
											                    <th>时间</th>
										                    </tr>
									                    </thead>
									                    <tbody>
									                        <tr>
									                        	<td>100米</td>
									                        	<td>韦俊权</td>
									                        	<td>电气学院</td>
									                        	<td>10.98秒</td>
									                        	<td>2006年</td>
									                        </tr>
									                        <tr>
									                        	<td>200米</td>
									                        	<td>韦俊权</td>
									                        	<td>电气学院</td>
									                        	<td>22.55秒</td>
									                        	<td>2006年</td>
									                        </tr>
									                        <tr>
									                        	<td>跳高</td>
									                        	<td>徐宗佩</td>
									                        	<td>土建学院</td>
									                        	<td>1.90米</td>
									                        	<td>2015年</td>
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
	
	    /*用户-删除*/
	    function member_del(obj,id){
	        layer.confirm('确认要删除吗？',function(index){
	            //发异步删除数据
	            $(obj).parents("tr").remove();
	            layer.msg('已删除!',{icon:1,time:1000});
	        });
	    }
	    function delAll (argument) {
	        var ids = [];
	
	        // 获取选中的id
	        $('tbody input').each(function(index, el) {
	            if($(this).prop('checked')){
	                ids.push($(this).val())
	            }
	        });
	
	        layer.confirm('确认要删除吗？'+ids.toString(),function(index){
	            //捉到所有被选中的，发异步进行删除
	            layer.msg('删除成功', {icon: 1});
	            $(".layui-form-checked").not('.header').parents('tr').remove();
	        });
	    }
	</script>
</html>