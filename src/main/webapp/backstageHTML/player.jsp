<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>运动员名单</title>
	    <link rel="stylesheet" href="css/font.css">
	    <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/buttons.css">
    	<link href="../css/style.css" rel="stylesheet">
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
		                    	<span style="font-size: 14px;color: #000;">学号：</span>
		                        <div class="layui-inline layui-show-xs-block">
		                            <input type="text" name="username" autocomplete="off" class="layui-input">
		                        </div>
		                        <span style="font-size: 14px;color: #000;">姓名：</span>
		                        <div class="layui-inline layui-show-xs-block">
		                            <input type="text" name="username"  autocomplete="off" class="layui-input">
		                        </div>
		                        <div class="layui-inline layui-show-xs-block">
		                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
		                        </div>
		                    </form>
		                </div>
		                <div class="layui-card-body ">
		                	<span style="font-size: 14px;color: #000;">参赛项目：</span>
		                	<select name="" style="height: 30px; border-color: #e6e6e6;">
		                		<option value="1">女子100米</option>
		                		<option value="2">男子200米</option>
		                		<option value="3">男子后抛实心球</option>
		                	</select>
		                </div>
		                <div class="layui-card-body layui-table-body layui-table-main">
		                    <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th><strong>学号</strong></th>
                                        <th><strong>姓名</strong></th>
                                        <th><strong>学院</strong></th>
                                        <th><strong>班级</strong></th>
                                        <th><strong>联系电话</strong></th>
                                        <th><strong>联系邮箱</strong></th>
                                        <th><strong>操作</strong></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong>20170960</strong></td>
                                        <td>yyq</td>
                                        <td>启迪数字学院</td>
                                        <td>软件Q171班</td>
                                        <td>11113145520</td>
                                        <td>2734737098@qq.com</td>
                                        <td class="td-manage">
											<div class="d-flex">
												<a title="参赛项目详情" href="javascript:;" onclick="xadmin.open('参赛项目详情','playerdetails.jsp','800','510')" class="btn btn-info shadow btn-xs sharp">
													<i class="fa fa-link"></i>
												</a>
												<a title="编辑" href="javascript:;" onclick="xadmin.open('修改运动员信息','playeredit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp">
													<i class="fa fa-pencil"></i>
												</a>
												<a href="#" class="btn btn-danger shadow btn-xs sharp">
													<i class="fa fa-trash"></i>
												</a>
											</div>
										</td>
                                    </tr>
                                    <tr>
                                        <td><strong>20160960</strong></td>
                                        <td>htq</td>
                                        <td>计通学院</td>
                                        <td>软件161班</td>
                                        <td>14356780922</td>
                                        <td>1432685245@qq.com</td>
                                        <td class="td-manage">
											<div class="d-flex">
												<a title="参赛项目详情" href="javascript:;" onclick="xadmin.open('参赛项目详情','playerdetails.jsp','800','510')" class="btn btn-info shadow btn-xs sharp">
													<i class="fa fa-link"></i>
												</a>
												<a title="编辑" href="javascript:;" onclick="xadmin.open('修改运动员信息','playeredit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp">
													<i class="fa fa-pencil"></i>
												</a>
												<a href="#" class="btn btn-danger shadow btn-xs sharp">
													<i class="fa fa-trash"></i>
												</a>
											</div>
										</td>
                                    </tr>
                                    <tr>
                                        <td><strong>20170912</strong></td>
                                        <td>lh</td>
                                        <td>财经学院</td>
                                        <td>财务171班</td>
                                        <td>15423769367</td>
                                        <td>1092378456@qq.com</td>
                                        <td class="td-manage">
											<div class="d-flex">
												<a title="参赛项目详情" href="javascript:;" onclick="xadmin.open('参赛项目详情','playerdetails.jsp','800','510')" class="btn btn-info shadow btn-xs sharp">
													<i class="fa fa-link"></i>
												</a>
												<a title="编辑" href="javascript:;" onclick="xadmin.open('修改运动员信息','playeredit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp">
													<i class="fa fa-pencil"></i>
												</a>
												<a href="#" class="btn btn-danger shadow btn-xs sharp">
													<i class="fa fa-trash"></i>
												</a>
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
</html>