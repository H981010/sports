<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>成绩排名</title>
	    <link rel="stylesheet" href="css/font.css">
	    <link rel="stylesheet" href="css/index.css">
	    <link rel="stylesheet" type="text/css" href="css/buttons.css"/>
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
		                    	<span>项目编号：</span>
		                        <div class="layui-inline layui-show-xs-block">
		                            <input type="text" name="username"  placeholder="请输入项目编号" autocomplete="off" class="layui-input">
		                        </div>
		                        <span>比赛项目：</span>
		                        <div class="layui-inline layui-show-xs-block">
		                            <input type="text" name="username"  placeholder="请输入项目名称" autocomplete="off" class="layui-input">
		                        </div>
		                        <div class="layui-inline layui-show-xs-block">
		                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
		                        </div>
		                    </form>
		                </div>
		                <div class="layui-card-header">
		                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>

		                </div>
		                <div class="layui-card-body layui-table-body layui-table-main">
		                    <table class="layui-table layui-form">
		                        <thead>
			                        <tr>
			                            <th>
			                                <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
			                            </th>
			                            <th>项目编号</th>
			                            <th>比赛项目</th>
			                            <th>参赛人员</th>
			                            <th>学号</th>
			                            <th>学院</th>
			                            <th>班级</th>
			                            <th>成绩</th>
			                            <th>名次</th>
			                            <th>操作</th>
			                        </tr>
		                        </thead>
		                        <tbody>
			                        <tr>
			                            <td>
			                                <input type="checkbox" name="id" value="1"   lay-skin="primary">
			                            </td>
			                            <td>1</td>
			                            <td >女子100米</td>
			                            <td >yyq</td>
			                            <td >20170960</td>
			                            <td >启迪数字学院</td>
			                            <td >软件Q171班</td>
			                            <td >11.2秒</td>
			                            <td >第一名</td>
			                            <td class="td-manage">
			                                <button class="btn_details">
			                                	<a title="详情" href="javascript:;" onclick="xadmin.open('女子100米成绩详情','rankscoredetails.jsp','800','510')"
				                                   class="ml-5" style="text-decoration:none">详情
				                                </a>
			                                </button>
			                            </td>
			                        </tr>
			                        <tr>
			                            <td>
			                                <input type="checkbox" name="id" value="1"   lay-skin="primary">
			                            </td>
			                            <td>2</td>
			                            <td >男子100米</td>
			                            <td >htq</td>
			                            <td >20160960</td>
			                            <td >计通学院</td>
			                            <td >软件161班</td>
			                            <td >11.1秒</td>
			                            <td >第一名</td>
			                            <td class="td-manage">
			                                <button class="btn_details">
			                                	<a title="详情" href="javascript:;" onclick="xadmin.open('男子100米成绩详情','rankscoredetails.jsp','800','510')"
				                                   class="ml-5" style="text-decoration:none">详情
				                                </a>
			                                </button>
			                            </td>
			                        </tr>
			                        <tr>
			                            <td>
			                                <input type="checkbox" name="id" value="1"   lay-skin="primary">
			                            </td>
			                            <td>3</td>
			                            <td >后抛实心球</td>
			                            <td >htq</td>
			                            <td >20160960</td>
			                            <td >计通学院</td>
			                            <td >软件161班</td>
			                            <td >5.7米</td>
			                            <td >第一名</td>
			                            <td class="td-manage">
			                                <button class="btn_details">
			                                	<a title="详情" href="javascript:;" onclick="xadmin.open('男子后抛实心球成绩详情','rankscoredetails.jsp','800','510')"
				                                   class="ml-5" style="text-decoration:none">详情
				                                </a>
			                                </button>
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
</html>