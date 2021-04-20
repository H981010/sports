<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>分组编道</title>
	    <link rel="stylesheet" href="css/font.css">
	    <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/buttons.css">
	    <link href="../css/bootstrap-select.min.css" rel="stylesheet">
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
		                        <div class="layui-inline layui-show-xs-block">
		                            <input type="text" name="username"  placeholder="请输入项目名称" autocomplete="off" class="layui-input">
		                        </div>
		                        <div class="layui-inline layui-show-xs-block">
		                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
		                        </div>
		                    </form>
		                </div>
		                <div class="layui-card-body layui-table-body layui-table-main" style="border: 1px solid #F1F1F1;">
		                    <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th colspan="7" style="font-size: 16px;">
                                        	<strong>女子100米</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        	<strong>预赛</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        	<strong>17人</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        	<strong>3组</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="3"><strong>1组</strong></td>
                                        <td>第一道</td>
                                        <td>第二道</td>
                                        <td>第三道</td>
                                        <td>第四道</td>
                                        <td>第五道</td>
                                        <td>第六道</td>
                                    </tr>
                                    <tr>
                                        <td>yyq</td>
                                        <td>htq</td>
                                        <td>lh</td>
                                        <td>gxt</td>
                                        <td>wyf</td>
                                        <td>wzt</td>
                                    </tr>
                                    <tr>
                                        <td>启迪数字学院</td>
                                        <td>土建学院</td>
                                        <td>财经学院</td>
                                        <td>计通学院</td>
                                        <td>国教学院</td>
                                        <td>职教学院</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3"><strong>2组</strong></td>
                                        <td style="color: #000000;font-size: 16px;">第一道</td>
                                        <td>第二道</td>
                                        <td>第三道</td>
                                        <td>第四道</td>
                                        <td>第五道</td>
                                        <td>第六道</td>
                                    </tr>
                                    <tr>
                                        <td>yyq</td>
                                        <td>htq</td>
                                        <td>lh</td>
                                        <td>gxt</td>
                                        <td>wyf</td>
                                        <td>wzt</td>
                                    </tr>
                                    <tr>
                                        <td>启迪数字学院</td>
                                        <td>土建学院</td>
                                        <td>财经学院</td>
                                        <td>计通学院</td>
                                        <td>国教学院</td>
                                        <td>职教学院</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3"><strong>3组</strong></td>
                                        <td>第一道</td>
                                        <td>第二道</td>
                                        <td>第三道</td>
                                        <td>第四道</td>
                                        <td>第五道</td>
                                        <td>第六道</td>
                                    </tr>
                                    <tr>
                                        <td>yyq</td>
                                        <td>htq</td>
                                        <td>lh</td>
                                        <td>gxt</td>
                                        <td>wyf</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>启迪数字学院</td>
                                        <td>土建学院</td>
                                        <td>财经学院</td>
                                        <td>计通学院</td>
                                        <td>国教学院</td>
                                        <td></td>
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