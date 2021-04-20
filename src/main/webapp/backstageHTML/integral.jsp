<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>统计积分</title>
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
		                    	<span>代表队名称：</span>
		                        <div class="layui-inline layui-show-xs-block">
		                            <input type="text" name="username"  placeholder="请输入代表队名称" autocomplete="off" class="layui-input">
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
			                            <th>代表队名称</th>
			                            <th>总积分</th>
			                            <th>名次</th>
			                            <th>性别</th>
			                            <th>100米</th>
			                            <th>200米</th>
			                            <th>400米</th>
			                            <th>800米</th>
			                            <th>1500米</th>
			                            <th>跳高</th>
			                            <th>跳远</th>
			                            <th>三级跳</th>
			                            <th>铅球</th>
			                            <th>垒球</th>
			                            <th>后抛实心球</th>
			                            <th>4*100米</th>
			                        </tr>
		                        </thead>
		                        <tbody>
			                        <tr>
			                            <td rowspan="2">启迪数字学院</td>
			                            <td rowspan="2"></td>
			                            <td rowspan="2"></td>
			                            <td >女</td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td rowspan="2"></td>
			                        </tr>
			                        <tr>
			                            <td >男</td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                        </tr>
			                        <tr>
			                            <td rowspan="2">计通学院</td>
			                            <td rowspan="2"></td>
			                            <td rowspan="2"></td>
			                            <td >女</td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td rowspan="2"></td>
			                        </tr>
			                        <tr>
			                            <td >男</td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                        </tr>
			                        <tr>
			                            <td rowspan="2">土建学院</td>
			                            <td rowspan="2"></td>
			                            <td rowspan="2"></td>
			                            <td >女</td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td rowspan="2"></td>
			                        </tr>
			                        <tr>
			                            <td >男</td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
			                            <td ></td>
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