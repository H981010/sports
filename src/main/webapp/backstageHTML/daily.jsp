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
	    <script src="lib/layui/layui.js" charset="utf-8"></script>
	    <script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="../js/daily.js"></script>
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
                                        <th><strong>编号</strong></th>
                                        <th><strong>名称</strong></th>
                                        <th><strong>限制</strong></th>
                                        <th><strong>赛次</strong></th>
                                        <th><strong>人数</strong></th>
                                        <th><strong>组数</strong></th>
                                        <th><strong>时间</strong></th>
                                        <th><strong>地点</strong></th>
                                        <th><strong>状态</strong></th>
                                        <th><strong>操作</strong></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong>01</strong></td>
                                        <td>100米</td>
                                        <td>女子</td>
                                        <td>预赛</td>
                                        <td>17人</td>
                                        <td>3组</td>
                                        <td>2020年11月2日 8:30</td>
                                        <td>田径场</td>
                                        <td><button class="not_start">未开始</button></td>
                                        <td class="td-manage">
											<div class="d-flex">
												<a title="编辑" href="javascript:;" onclick="xadmin.open('修改项目日程安排','dailyedit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
												<a href="#" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
											</div>
										</td>
                                    </tr>
                                    <tr>
                                        <td><strong>02</strong></td>
                                        <td>400米</td>
                                        <td>女子</td>
                                        <td>预决赛</td>
                                        <td>12人</td>
                                        <td>2组</td>
                                        <td>2020年11月2日 9:00</td>
                                        <td>田径场</td>
                                        <td><button class="going_on">进行中</button></td>
                                        <td class="td-manage">
											<div class="d-flex">
												<a title="编辑" href="javascript:;" onclick="xadmin.open('修改项目日程安排','dailyedit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
												<a href="#" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
											</div>
										</td>
                                    </tr>
                                    <tr>
                                        <td><strong>03</strong></td>
                                        <td>跳远</td>
                                        <td>男子</td>
                                        <td>决赛</td>
                                        <td>20人</td>
                                        <td>1组</td>
                                        <td>2020年11月2日 9:30</td>
                                        <td>田径场</td>
                                        <td><button class="end">已结束</button></td>
                                        <td class="td-manage">
											<div class="d-flex">
												<a title="编辑" href="javascript:;" onclick="xadmin.open('修改项目日程安排','dailyedit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
												<a href="#" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
											</div>
										</td>
                                    </tr>
									
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
	<script src="../js/global.min.js"></script>
	<script src="..js/bootstrap-select.min.js"></script>
    <script src="../js/custom.min.js"></script>
</html>